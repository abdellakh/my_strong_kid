import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import './Home.dart';
import 'package:adobe_xd/page_link.dart';

import 'Parent_Coach.dart';

class FInish extends StatelessWidget {
  FInish({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff5f5f5),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        child: Text(
          'Finish',
          style: TextStyle(color: Colors.black),
        ),
        onPressed: () {
          Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (BuildContext context) => Home()));
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      bottomSheet: Padding(padding: EdgeInsets.only(bottom: 25.0)),
      body: Stack(
        children: <Widget>[
          Transform.translate(
            offset: Offset(49.0, 637.0),
            child: Text(
              ' Great!\n Let\'s jump to the app',
              style: TextStyle(
                fontFamily: 'Gotham',
                fontSize: 29,
                color: const Color(0xff000000),
                fontWeight: FontWeight.w300,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(70.0, 17.0),
            child:
                // Adobe XD layer: 'black-removebg-prev…' (shape)
                Container(
              width: 274.0,
              height: 141.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('assets/images/LogoNOIR.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(0.0, 160.0),
            child:
                // Adobe XD layer: 'Capture-removebg-pr…' (shape)
                Container(
              width: 701.0,
              height: 489.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('assets/images/FINISH.png'),
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
