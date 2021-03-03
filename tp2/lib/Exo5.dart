/*
TP2 by Fan & Xuechu
Exo 5 : Génération du plateau de tuiles
*/

import 'package:flutter/material.dart';

class generationDuPlateau extends StatefulWidget {
  @override
  _generationDuPlateauState createState() => _generationDuPlateauState();
}

class _generationDuPlateauState extends State<generationDuPlateau> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Exo 5'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          _gridViewPhoto(),
          Container(
              height: 300,
              child: Image.asset(
                'images/XDU_IMT.png',
                fit: BoxFit.cover
              )
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            "Xidian University and IMT Lille Douai",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
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

Widget _gridViewPhoto() {
    return Container(
      height: 300,
      child: GridView(
        padding: EdgeInsets.only(
          left: 16.0,
          right: 16.0,
          top: 16.0
        ),
        scrollDirection: Axis.vertical,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: 5.0,
          crossAxisSpacing: 5.0,
          childAspectRatio: 2000/1333,
        ),
        children: <Widget>[
          tile1.croppedImageTile(),
          tile2.croppedImageTile(),
          tile3.croppedImageTile(),
          tile4.croppedImageTile(),
          tile5.croppedImageTile(),
          tile6.croppedImageTile(),
          tile7.croppedImageTile(),
          tile8.croppedImageTile(),
          tile9.croppedImageTile(),
        ],
      ),
    );
 }

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
            widthFactor: 1/3,
            heightFactor: 1/3,
            child: Image.asset(this.imageURL),
          ),
        ),
      ),
    );
  }
}

Tile tile1 = new Tile(
    imageURL: 'images/XDU_IMT.png', alignment: Alignment(-1, -1)
);

Tile tile2 = new Tile(
    imageURL: 'images/XDU_IMT.png', alignment: Alignment(0, -1)
);

Tile tile3 = new Tile(
    imageURL: 'images/XDU_IMT.png', alignment: Alignment(1, -1)
);

Tile tile4 = new Tile(
    imageURL: 'images/XDU_IMT.png', alignment: Alignment(-1, 0)
);

Tile tile5 = new Tile(
    imageURL: 'images/XDU_IMT.png', alignment: Alignment(0, 0)
);

Tile tile6 = new Tile(
    imageURL: 'images/XDU_IMT.png', alignment: Alignment(1, 0)
);

Tile tile7 = new Tile(
    imageURL: 'images/XDU_IMT.png', alignment: Alignment(-1, 1)
);

Tile tile8 = new Tile(
    imageURL: 'images/XDU_IMT.png', alignment: Alignment(0, 1)
);

Tile tile9 = new Tile(
    imageURL: 'images/XDU_IMT.png', alignment: Alignment(1, 1)
);