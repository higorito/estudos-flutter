import 'package:flutter/material.dart';
import 'dart:ui';

void main() {        //qidgets é comose fosse classe e vai colocando uma dentro da outra
  runApp(AppWidget());
}

class AppWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
    child: Center(
      child: Text(
        'opa',
        ),
      ),
  );
  }}