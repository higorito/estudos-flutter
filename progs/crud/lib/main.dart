import 'package:crud/provider/usuarios.dart';
import 'package:crud/rotas/rotas_app.dart';
import 'package:crud/views.dart/user_form.dart';
import 'package:crud/views.dart/userlist.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  
  @override
  Widget build(BuildContext context) {
    return MultiProvider(            //p criar varios providers, tipo p dados, login etc
      providers:[            //basta ir add aqui
        ChangeNotifierProvider(
        create: (ctx)=>  UsersProv(),
        ),
      ], 
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
    
          primarySwatch: Colors.blue,
        ),
        //home: UserList(),   //assim ou AppRotas.HOME: (_) => UserList(), ali em routes
        routes: {
          AppRotas.HOME: (_) => UserList(),
          AppRotas.USER_FORM: (_) => UserForm()
        },

      ),
    );
  }
}
