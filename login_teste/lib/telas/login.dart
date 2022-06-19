import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class LoginPg extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 20,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                image: AssetImage("assets/login_img.jpg"
                ),
                fit: BoxFit.cover,
                )
              ),
          ),
          ),
          Expanded(child: Column(
            children: <Widget>[
              RichText(text: TextSpan(children: [
                TextSpan(
                  text: "OLA",
                  style: Theme.of(context).textTheme.headline4
                )
              ],
              )
              ),
            ],
          ),)
      ],
      ),
    );
  }
}