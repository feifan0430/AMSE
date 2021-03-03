/*
TP2 by Fan & Xuechu
Exo 6b : Jeu d'animation d'une tuile
*/

import 'package:flutter/material.dart';
import 'dart:math' as math;

math.Random random = new math.Random();

class Tile {
  Color color;
  Tile(this.color);
  Tile.randomColor() {
    this.color = Color.fromARGB(
      255, 
      random.nextInt(255), 
      random.nextInt(255), 
      random.nextInt(255));
  }
}

class TileWidget extends StatelessWidget {
  final Tile tile;
  final int order;
  final Color bgColor;

  TileWidget(this.order, this.tile, {this.bgColor});

  @override
  Widget build(BuildContext context) {
    return this.coloredBox();
  }

  Widget coloredBox() {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(color: bgColor ?? tile.color),
      child: Text("Tile $order"),
    );
  }
}

// Le même commentaire est dans exo7.dart
class GamePositionedTiles extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => PositionedTilesState();
}

class PositionedTilesState extends State<GamePositionedTiles> {
  int num = 3;
  int sum;
  List<Widget> tiles;
  String sliderText = "Num : ";

  int startIndex;

  GlobalKey blankKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    sum = num * num;
    tiles = List<Widget>.generate(
        sum, (index) => TileWidget(index, Tile.randomColor()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Exo 6b'),
        centerTitle: true,
      ),
      body: Column(children: [
        Container(
          height: 520,
          child: GridView.builder(
            padding: EdgeInsets.fromLTRB(15, 50, 15, 5),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: num,
              childAspectRatio: 1,
              crossAxisSpacing: 5,
              mainAxisSpacing: 5,
            ),
            itemCount: tiles.length,
            itemBuilder: (context, index) {
              if (startIndex != null && startIndex == index) {
                return Container(
                  key: blankKey,
                  color: Colors.transparent, //
                );
              } else {
                GlobalKey myKey = GlobalKey();
                return InkWell(
                  onTap: () {
                    bool flag = _checkIsAvailable(currentKey: myKey);
                    if (flag == true) {
                      print('available');
                      setState(() {
                        startIndex = index;
                      });
                    } else {
                      print('not available');
                    }
                  },
                  child: Container(
                    key: myKey,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),
                    child: tiles[index],
                  ),
                );
              }
            },
          ),
        ),
        _slider(),
        Text(sliderText),
        ElevatedButton(
          onPressed: () {
            startIndex = random.nextInt(tiles.length);
            print(startIndex);
            setState(() {});
          },
          child: Text("START"),
          style: ButtonStyle(),
        ),
      ]),
      floatingActionButton: FloatingActionButton(
          child: Text("Swap"),
          onPressed: swapTiles
      ),
    );
  }

  Slider _slider() {
    return Slider(
      value: num.toDouble(),
      min: 3,
      max: 6,
      divisions: 3,
      onChanged: (value) { },
      onChangeStart: (value) { },
      onChangeEnd: (value) {
        int valuetemp = value.toInt();
        updateSlider(value, "Size : $valuetemp * $valuetemp ");
      },
    );
  }

  void updateSlider(value, text) {
    sliderText = text;
    setState(() {
      num = value.toInt();
      sum = num * num;
      tiles = List<Widget>.generate(
        sum,
        (index) => TileWidget(
          index,
          Tile.randomColor(),
        ),
      );
    });
  }

  swapTiles() {
    List<Widget> temp = List();
    while (tiles.length > 0) {
      var r = random.nextInt(tiles.length);
      temp.add(tiles[r]);
      tiles.removeAt(r);
    }
    tiles = temp;
    setState(() {});
  }

  math.Point _itemCenter(GlobalKey key) {
    RenderBox renderBox = key.currentContext.findRenderObject();
    var offset = renderBox.localToGlobal(Offset(0.0, renderBox.size.height));
    var size = key.currentContext.size;
    var centerX = offset.dx + size.width / 2.0;
    var centerY = offset.dy + size.height / 2.0;
    var centeroffset = Offset(centerX, centerY);
    print('this center point $centeroffset');
    return math.Point(centerX, centerY);
  }

  bool _checkIsAvailable({GlobalKey currentKey}) {
    var size = currentKey.currentContext.size;
    math.Point currentCenter = _itemCenter(currentKey);
    math.Point blankOffset = _itemCenter(blankKey);
    print("this current center $currentCenter and blank center $blankOffset");
    var distance = currentCenter.distanceTo(blankOffset);
    print("distance is $distance");
    var safeDistance = math.sqrt(size.height * size.width) + 10; // 10 == 2 * padding
    print('safeDistance is $safeDistance');
    if (distance <= safeDistance) {
      return true;
    }
    return false;
  }
}