import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:splah_login/controlador/login_contr.dart';

class LoginPg extends StatelessWidget {

  LoginControlar _controle = LoginControlar();

 LoginPg({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Container(
      padding: EdgeInsets.all(30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.people, size: 70),
          TextField(
            decoration: InputDecoration(
              label: Text('Usuário'),
              ),

            onChanged: _controle.setUser,

          ),
          TextField(
            decoration: InputDecoration(
              label: Text('Senha'),
              ),
              obscureText: true,

              onChanged: _controle.setSenha,
          ),
          SizedBox(height: 50,),
          ElevatedButton(onPressed: (){},
           child: Text('Logar'),

           )
        ],
      ),
      ),
    );
  }
}