import 'package:flutter/material.dart';
import 'package:login_teste/constantes.dart';
import 'package:login_teste/telas/login.dart';
import 'package:login_teste/telas/splashScren.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login I',
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: corPrimaria,
        scaffoldBackgroundColor: fundoCor
      ),
      
      initialRoute: '/splashScren',
      routes: {
        '/splashScren': (_)=> SplashPg(),
        '/login': (_)=> LoginPg(),
      },

    );
  }
}

