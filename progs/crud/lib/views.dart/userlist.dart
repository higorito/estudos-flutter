import 'package:crud/componentes/user_tile.dart';
import 'package:crud/dados/datas.dart';
import 'package:crud/modelos/user.dart';
import 'package:crud/provider/usuarios.dart';
import 'package:crud/rotas/rotas_app.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class UserList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final UsersProv users = Provider.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Lista Users'),

        actions: <Widget>[
          IconButton(
          icon: Icon(Icons.add),
          onPressed: (){ 
            
            Navigator.of(context).pushNamed(AppRotas.USER_FORM);  //vai navegar p a outra tela... colocar por cima
          },
          ),
        ],
      ),

      body: ListView.builder(
        itemCount: users.count,
        itemBuilder: (ctx, i) =>UserTile(users.byIndex(i)),
        
        ),

    );
  }
}