import 'dart:html';

import 'package:crud/modelos/user.dart';
import 'package:crud/provider/usuarios.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';

class UserForm extends StatelessWidget {
  final _form = GlobalKey<FormState>();
  final Map<String, String>_formData = {}; //mapa poderia ser string, qlq coisa

  void _carregarDadosForm(User user){
    
      _formData['id'] = user.id.toString();
      _formData['nome'] = user.nome;
      _formData['email'] = user.email;
     _formData['avatarUrl'] = user.avatarUrl;
    
    
  }
 
  @override
  Widget build(BuildContext context) {
    final user = ModalRoute.of(context)!.settings.arguments as User;  //ta pegando 'onde clicou'
    
    _carregarDadosForm(user);  //vai carregar os dados na _formData

    return Scaffold(
      appBar: AppBar(
        title: Text('Form user'),
        actions: <Widget>[
          IconButton(
            onPressed: (){
              final valido= _form.currentState!.validate();
              if (valido) {
                _form.currentState!.save();

                //dps de estar tudo certo podesse chamar o provider com os dados no _Formdata
                Provider.of<UsersProv>(context, listen: false).put(User(     //colocou false p n notificar q ta salvando
                  id: _formData['id'],
                  nome: _formData['nome'].toString(),
                  email: _formData['email'].toString(),
                  avatarUrl: _formData['avatarUrl'].toString(),
                ));
                Navigator.of(context).pop();
              }
              
            },

            icon: Icon(Icons.save),
            )

        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: Form(
          key: _form,   //p conseguir pegar o formulario e acessar em outro lugar
          child: Column(
          children: <Widget>[
            TextFormField(
              initialValue: _formData['nome'],  //p começar nos textfield com valores quando clica em editar. gracas ao _carregarDadosForm

              decoration: InputDecoration(labelText: 'Nome'),
              validator: (value){
                if (value == null || value.trim().isEmpty) {
                  return 'Nome Invalido!';
                }

                if (value.trim().length <=3) {   //trim tira os espaços
                  return 'Deve conter mais de 3 caracteres!';
                }
                return null;
              },
              onSaved: (value) =>_formData['nome']= value.toString(),
            ),
            TextFormField(
              initialValue: _formData['email'],

              decoration: InputDecoration(labelText: 'Email'),
              onSaved: (value) =>_formData['email']= value.toString(),
            ),
            TextFormField(
              initialValue:_formData['avatarUrl'],

              decoration: InputDecoration(labelText: 'Url Avatar'),
              onSaved: (value) =>_formData['avatarUrl']= value.toString(),
            ),
          ],
        ),
       ),
      ),
    );
  }
}