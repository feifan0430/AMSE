import "package:flutter/material.dart";
import 'package:tp2/Exo3.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "TP2_Fan_Xuechu",
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "TP2"
          ),
        ),
        body: menu(),
      ),
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
    );
  }
}
