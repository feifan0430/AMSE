/*
TP2 by Fan & Xuechu
Exo 6a : Animation d'une tuile
*/

import 'package:flutter/material.dart';
import 'dart:math' as math;

math.Random random = new math.Random();

class Tile {
  Color color;
  Tile(this.color); 
  Tile.randomColor() {
    this.color = Color.fromARGB(
        255, random.nextInt(255), random.nextInt(255), random.nextInt(255));
  }
}

class TileWidget extends StatelessWidget {
  final Tile tile;
  final int order;

  TileWidget(this.order ,this.tile);

  @override
  Widget build(BuildContext context) {
    return this.coloredBox();
  }

  Widget coloredBox() {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: tile.color
      ),
      child: Text("Tile $order"),
    );
  }
}

class PositionedTiles extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => PositionedTilesState();
}

class PositionedTilesState extends State<PositionedTiles> {

  int num = 3;
  int sum;
  List<Widget> tiles;

  @override
  void initState(){
    super.initState();
    sum = num * num;
    tiles =
      List<Widget>.generate(sum, (index) => TileWidget(index, Tile.randomColor()));
  }
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Exo 6a'),
        centerTitle: true,
      ),
      body: Column(
        children:[
          Container(
            height: 420,
            child: GridView.builder(
              padding: EdgeInsets.fromLTRB(15, 50, 15, 5),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: num,
                childAspectRatio: 1,
                crossAxisSpacing: 5,
                mainAxisSpacing: 5,
              ),
              itemCount: tiles.length, 
              itemBuilder: (context, index){
                return Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: tiles[index],
                );
              }
            ),
          ),
        ]
      ),
      floatingActionButton: FloatingActionButton(
        child: Text("Swap"), 
        onPressed: swapTiles,
      ),
    );
  }

  swapTiles() {
    setState(() {
      tiles.insert(sum-1, tiles.removeAt(0));
    });
  }
}