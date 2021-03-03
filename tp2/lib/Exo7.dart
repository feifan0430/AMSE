/*
TP2 by Fan & Xuechu
Exo 7 : Jeu d'animation d'une tuile avec un BottomAppBar
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
      random.nextInt(255),
    );
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


class Exo7 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => PositionedTilesState();
}

class PositionedTilesState extends State<Exo7> {
  int num = 3; // Initialement une grille 3 * 3
  int sum; // Nombre total de cellules
  List<Widget> tiles;
  String startText = "Start"; // Texte du bouton Démarrer

  int startIndex;// start index

  GlobalKey blankKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    sum = num * num; // Nombre total de cellules
    tiles = List<Widget>.generate(
      sum, (index) => TileWidget(index, Tile.randomColor())
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Exo 7'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            height: 520,
            child: GridView.builder(
              padding: EdgeInsets.fromLTRB(15, 50, 15, 15),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: num, // grille num * num
                childAspectRatio: 1,
                crossAxisSpacing: 5,
                mainAxisSpacing: 5,
              ),
              itemCount: tiles.length,
              itemBuilder: (context, index) {
                if (startIndex != null && startIndex == index) {
                  return Container(
                    key: blankKey,
                    color: Colors.transparent, 
                    // Laissez la grille index 'disparaître'
                  );
                } else {
                  GlobalKey myKey = GlobalKey();
                  return InkWell(
                    onTap: () {
                      bool flag = _checkIsAvailable(currentKey: myKey);
                      // Déterminez si le carré cliqué peut être échangé
                      if (flag == true) {
                        print('available');
                        // Echange
                        setState(() {
                          startIndex = index;
                        });
                      } else {
                        // Pas d'échange
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
          ElevatedButton(
            onPressed: () {
              swapTiles();
            },
            child: Text("Swap"),
            style: ButtonStyle(),
          ),
        ]
      ),
      floatingActionButton: FloatingActionButton(
        child: Text(startText), 
        onPressed: () {
          // Faire disparaître un carré lorsque vous cliquez sur le bouton de démarrage
          startIndex = random.nextInt(tiles.length);
          print(startIndex);
          setState(() {
            startText = "ReStart";
          });
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.grey[400],
        shape: CircularNotchedRectangle(),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: Text(
                " - ",
                style: TextStyle(
                  fontSize: 30,
                ),
              ), 
              onPressed: (){
                upDateSub();
              }
            ),
            IconButton(
              icon: Text(
                " + ",
                style: TextStyle(
                  fontSize: 30,
                ),
              ), 
              onPressed: (){
                upDatePlus();
              }
            )
          ],
        ),
      ),
    );
  }

  // Mettre à jour la taille de la grille
  // Limitée entre 3 * 3 et 6 * 6
  void upDatePlus() {
    setState(() {
      if(num < 6){
        num++;
        sum = num * num;
        tiles = List<Widget>.generate(
          sum,
          (index) => TileWidget(
            index,
            Tile.randomColor(),
          ),
        );
      }
    });
  }

  void upDateSub() {
    setState(() {
      if(num > 3){
        num--;
        sum = num * num;
        tiles = List<Widget>.generate(
          sum,
          (index) => TileWidget(
            index,
            Tile.randomColor(),
          ),
        );
      }
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
    setState(() { });
  }

  // Obtenez les coordonnées du centre
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

  // Calculez la distance entre deux carrés
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