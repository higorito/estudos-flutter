import 'package:flutter/material.dart';
import 'package:git_buscar/myWidget.dart';


void main() => runApp(GitApp()); //assim consigo escrever tudo em uma linha

class GitApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {  //função build q é obrigatoria com o statelesswidget
    return MaterialApp(
      title: "APP Git",
      home: Scaffold(      //especificação do material designe q cuida dessa appbar
        appBar: AppBar(
          title: Text("Titulo APP"),
        ),

        body: Center(
          child: GitAppWidget()      //aq cirou um componente externo e colocou no codigo 
          
        ),


      
      ),
    );


  }


}
