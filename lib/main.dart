import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/ParentProfil.dart';
import 'package:flutter_application_1/Parent_Coach.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Splash());
  }
}

class Splash extends StatelessWidget {
  const Splash({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Timer(
        Duration(seconds: 3),
        () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => Parent_Coach())));
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Color(0xffDB00B6), Color(0xff450079)]),
            ),
          ),
          Transform.translate(
            offset: Offset(34.0, 359.0),
            child:
                // Adobe XD layer: 'onlinelogomaker-011…' (shape)
                Container(
              width: 346.0,
              height: 178.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('assets/images/logo.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
