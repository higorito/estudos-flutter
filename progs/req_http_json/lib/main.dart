import 'dart:js';

import 'package:flutter/material.dart';
import 'package:req_http_json/api.dart';
import 'package:req_http_json/user.dart';

void main() =>runApp(myApp());

class myApp extends StatelessWidget{
  @override
  Widget build(context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'HTTP-JSON',
      home: BuildListView(),
    );
  }

}

class BuildListView extends StatefulWidget {
  @override
  State<BuildListView> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<BuildListView> {

  var users = List<Users>();

  _getUsers(){
    API.getUsers().then(response){
        Iterable lista = json.decode
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lista"),
      ),

      body: listaUsuario()

    );
  }

  listaUsuario(){
    return ListView.builder(
      itemBuilder: (context, index){
        return ListTile(
          title: Text("minha lista"),
        );
      }
      
      );
  }
}