import 'package:flutter/material.dart';
import 'package:splah_login/paginas/loginPg.dart';
import 'package:splah_login/paginas/splash.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter teste',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),

      initialRoute: '/splash',
      routes: {
        '/splash': (_)=>const SplashPg(),
        '/login': (_)=> LoginPg(),
      },
    );
  }
}

