/*
TP2 by Fan & Xuechu
Exo 1 : afficher une image
*/

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class afficherUneImage extends StatefulWidget {
  @override
  _afficherUneImageState createState() => _afficherUneImageState();
}

class _afficherUneImageState extends State<afficherUneImage> {

  // @override
  // void initState() {
  //   super.initState();
  //   SystemChrome.setPreferredOrientations([
  //     DeviceOrientation.landscapeLeft,
  //     DeviceOrientation.landscapeRight
  //   ]);
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Exo 1'),
        centerTitle: true,
      ),
      body: Container(
        alignment: Alignment.center,
        child: Image.asset(
          "images/141.png",
          fit: BoxFit.cover,
        ),
      )
    );
  }

  // void dispose() {
  //   super.dispose();
  //   SystemChrome.setPreferredOrientations([
  //     DeviceOrientation.portraitUp,
  //     DeviceOrientation.portraitDown
  //   ]);
  // }
}