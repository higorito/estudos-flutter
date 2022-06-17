import 'dart:async';
import 'dart:html';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

import 'dart:convert';

void main() async{
 

  Uri uri= Uri.https('jsonplaceholder.typicode.com','/todos/');
  final future = http.get(uri);

  future.then((response){
      if(response.statusCode == 200){
        print('Carregou');
      
      /*  //aq seria com um dado so
        Map<String, dynamic> dados= json.decode(response.body);

        print(dados); */

      /*  AQ VARIOS DADOS agora vamos criar uma classe
        var lista =json.decode(response.body) as List;
        lista.forEach((element) {print(element);});   //listando elemento por elemento podemos filtrar tmb como element["title"]
        */

       //apos criar a classe user

    /*  AINDA N MOSTRA TODOS... MSM COM A CLASSE QUE TRATA OS JSON... IMPLEMENTAR AGR
       Map<String, dynamic> dados= json.decode(response.body);

       User user = User.fromJson(dados); 
      print(user.toJson());
  */
      var lista = json.decode(response.body) as List;
      
      var minhaLista = GuardarListas(lista);

      print(minhaLista.todos.length);   //agora consigo usar os metodos da lista 

      print(minhaLista.todos[0]);

      //minhaLista.todos.forEach((element) {print(element);});   //agora esta mapeado e consigo tudo
      //consegue fazer tudo como:
      
      minhaLista.todos.forEach((element) {

        var usuarios = User.fromJson(element); 
        print(usuarios.id);
      });
      


      }else{print('erro');}
  });
}
//aq guarda a lista
class GuardarListas{
  final List todos;

  GuardarListas(this.todos);

}
//aq guarda a estrutura do elemento
class User {
  final int userId;
  final int id;
  final String title;
  final bool completed;

  User(this.userId, this.id, this.title, this.completed);

  factory User.fromJson(Map<String, dynamic> json) {
    return User( 
     json['userId'],
     json['id'],
     json['title'],
     json['completed']);
  }

  Map<String, dynamic> toJson() =>{
    'userId' : this.userId,
    'id' : this.id,
    'title' : this.title,
    'completed' : this.completed,
  };
}