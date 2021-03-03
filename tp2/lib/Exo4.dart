/*
TP2 by Fan & Xuechu
Exo 4 : Affichage d'une tuile (un morceau d'image)
*/

import 'package:flutter/material.dart';

class Tile {
  String imageURL;
  Alignment alignment;

  Tile({this.imageURL, this.alignment});

  Widget croppedImageTile() {
    return FittedBox(
      fit: BoxFit.fill,
      child: ClipRect(
        child: Container(
          child: Align(
            alignment: this.alignment,
            widthFactor: 0.2,
            heightFactor: 0.2,
            child: Image.asset(this.imageURL),
          ),
        ),
      ),
    );
  }
}

Tile tile = new Tile(
    imageURL: 'images/testpicture.png', alignment: Alignment(-0.8, 0));

class DisplayTileWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Exo 4'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              width: 150.0,
              height: 150.0,
              child: Container(
                margin: EdgeInsets.all(20.0),
                child: this.createTileWidgetFrom(tile)
              )
            ),
            Container(
              height: 200,
              child: Image.asset(
                'images/testpicture.png',
                fit: BoxFit.cover
              )
            )
          ]
        )
      ),
    );
  }

  Widget createTileWidgetFrom(Tile tile) {
    return InkWell(
      child: tile.croppedImageTile(),
      onTap: () {
        print("tapped on tile");
      },
    );
  }
}