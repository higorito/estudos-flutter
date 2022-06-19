import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class SplashPg extends StatefulWidget {
  const SplashPg({Key? key}) : super(key: key);

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
      color: Colors.blue.shade400,
      child: Center(
        child: CircularProgressIndicator(),),

    );
  }
}