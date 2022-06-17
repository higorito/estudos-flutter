import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Widget TextField",
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: WidgetsBasicos(),
    );
  }
}

class WidgetsBasicos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Widget TextField"),
      ),
      body: Container(
        color: Colors.white,
        child: widgetTextField(),
      ),
    );
  }

  Padding widgetTextField() {
    return Padding(
    //aqui posso decorar textfield
    padding: const EdgeInsets.all(16.0),
     child: Column(
      children: [
        TextField(
          autofocus: true,

         decoration: 
          InputDecoration(
            border: InputBorder.none,
            icon: Icon(Icons.person),
            hintText: 'Digite o nome'   ),
        ),
    //outro text field
        TextField(
                
                decoration:
                InputDecoration(border: 
                InputBorder.none,
                icon: Icon(Icons.mail),
                hintText: 'Digite o email'),
        ),
      ],
     ),
    );
  }
}