import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class SplashPg extends StatefulWidget {
  @override
  State<SplashPg> createState() => _SplashPgState();
  
}

class _SplashPgState extends State<SplashPg> {
   @override
   void initState(){
    super.initState();
    Future.delayed(Duration(seconds: 3)).then(
      (_) => Navigator.of(context).pushReplacementNamed('/login'),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.shade300,
      child: Center(
        child: CircularProgressIndicator(),),

    );
  }
}