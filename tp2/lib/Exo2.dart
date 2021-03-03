/*
TP2 by Fan & Xuechu
Exo 2 : Transformer une image
*/

import 'package:flutter/material.dart';
import 'dart:math' as math;

class mySlider extends StatefulWidget {
  @override
  _mySliderState createState() => _mySliderState();
}

class _mySliderState extends State<mySlider> {
  @override
  
  String sliderTextX = "RotateX : 0.0 rad";
  String sliderTextY = "RotateY : 0.0 rad";
  String sliderTextZ = "RotateZ : 0.0 rad";

  double axisX = 0;
  double axisY = 0;
  double axisZ = 0;
  double sliderValueX = 0;
  double sliderValueY = 0;
  double sliderValueZ = 0;

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Exo 2'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Padding(padding: EdgeInsets.all(30)),
            Container(
              padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(color: Colors.grey[300]),
              child: Transform(
                alignment: Alignment.center,
                transform: Matrix4.rotationX(axisX)..rotateY(axisY)..rotateZ(axisZ),
                child: Container(
                  child: Image.asset("images/starwars.png"),
                ),
              ),
            ),
            _sliderX(),
            Text(
              sliderTextX
            ),
            _sliderY(),
            Text(
              sliderTextY
            ),
            _sliderZ(),
            Text(
              sliderTextZ
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: (){
                setState(() {
                  axisX = math.pi - axisX;
                  axisY = math.pi - axisY;
                  //axisZ = math.pi - axisZ;
                });
              }, 
              child: Text("Mirror"),
            )
          ],
        ),
      ),
    );
  }

  Slider _sliderX(){
    return Slider(
      value: sliderValueX,
      max: math.pi*2,
      onChanged: (value){
        value = double.parse((value).toStringAsFixed(2));
        updateSliderX(value, "RotateX : $value rad");
      },
      onChangeStart: (value){
        value = double.parse((value).toStringAsFixed(2));
        updateSliderX(value, "RotateX : $value rad");
      },
      onChangeEnd: (value){
        value = double.parse((value).toStringAsFixed(2));
        updateSliderX(value, "RotateX : $value rad");
      },
    );
  }

  void updateSliderX(value, text){
    sliderValueX = value;
    sliderTextX = text;
    setState(() {
      axisX = value;
    });
  }

  Slider _sliderY(){
    return Slider(
      value: sliderValueY,
      max: math.pi*2,
      onChanged: (value){
        value = double.parse((value).toStringAsFixed(2));
        updateSliderY(value, "RotateY : $value rad");
      },
      onChangeStart: (value){
        value = double.parse((value).toStringAsFixed(2));
        updateSliderY(value, "RotateY : $value rad");
      },
      onChangeEnd: (value){
        value = double.parse((value).toStringAsFixed(2));
        updateSliderY(value, "RotateY : $value rad");
      },
    );
  }

  void updateSliderY(value, text){
    sliderValueY = value;
    sliderTextY = text;
    setState(() {
      axisY = value;
    });
  } 

  Slider _sliderZ(){
    return Slider(
      value: sliderValueZ,
      max: math.pi*2,
      onChanged: (value){
        value = double.parse((value).toStringAsFixed(2));
        updateSliderZ(value, "RotateZ : $value rad");
      },
      onChangeStart: (value){
        value = double.parse((value).toStringAsFixed(2));
        updateSliderZ(value, "RotateZ : $value rad");
      },
      onChangeEnd: (value){
        value = double.parse((value).toStringAsFixed(2));
        updateSliderZ(value, "RotateZ : $value rad");
      },
    );
  }

  void updateSliderZ(value, text){
    sliderValueZ = value;
    sliderTextZ = text;
    setState(() {
      axisZ = value;
    });
  }
}