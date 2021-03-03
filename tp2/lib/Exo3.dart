/*
TP2 Fan & Xuechu
Exo 3 : Menu et navigation entre pages
*/

import 'package:flutter/material.dart';
import 'package:tp2/Exo1.dart';
import 'package:tp2/Exo5.dart';
import 'package:tp2/Exo6a.dart';
import 'package:tp2/Exo6b.dart';
import 'package:tp2/Exo2.dart';
import 'package:tp2/Exo4.dart';
import 'package:tp2/Exo7.dart';

class menu extends StatefulWidget {
  @override
  _menuState createState() => _menuState();
}

class _menuState extends State<menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Card(
            color: Colors.grey[300],
            child: ListTile(
              title: Text(
                "Exo 1 : afficher une image",
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
              trailing: Icon(
                Icons.more_outlined,
              ),
              onTap: (){
                Navigator.push(
                  context, 
                  MaterialPageRoute(builder: (context) => afficherUneImage())
                );
              },
            ),
          ),

          Card(
            color: Colors.grey[300],
            child: ListTile(
              title: Text(
                "Exo 2 : Transformer une image",
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
              trailing: Icon(
                Icons.more_outlined,
              ),
              onTap: (){
                Navigator.push(
                  context, 
                  MaterialPageRoute(builder: (context) => mySlider())
                );
              },
            ),
          ),

          Card(
            color: Colors.grey[300],
            child: ListTile(
              title: Text(
                "Exo 3 : Menu et navigation",
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
              trailing: Icon(
                Icons.more_outlined,
              ),
            ),
          ),
          
          Card(
            color: Colors.grey[300],
            child: ListTile(
              title: Text(
                "Exo 4 : Affichage d'une tuile",
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
              trailing: Icon(
                Icons.more_outlined,
              ),
              onTap: (){
                Navigator.push(
                  context, 
                  MaterialPageRoute(builder: (context) => DisplayTileWidget())
                );
              },
            ),
          ),

          Card(
            color: Colors.grey[300],
            child: ListTile(
              title: Text(
                "Exo 5 : Génération du plateau de tuiles",
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
              trailing: Icon(
                Icons.more_outlined,
              ),
              onTap: (){
                Navigator.push(
                  context, 
                  MaterialPageRoute(builder: (context) => generationDuPlateau())
                );
              },
            ),
          ),

          Card(
            color: Colors.grey[300],
            child: ListTile(
              title: Text(
                "Exo 6a : Animation d'une tuile",
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
              trailing: Icon(
                Icons.more_outlined,
              ),
              onTap: (){
                Navigator.push(
                  context, 
                  MaterialPageRoute(builder: (context) => PositionedTiles())
                );
              },
            ),
          ),

          Card(
            color: Colors.grey[300],
            child: ListTile(
              title: Text(
                "Exo 6b : Jeu d'animation d'une tuile",
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
              trailing: Icon(
                Icons.more_outlined,
              ),
              onTap: (){
                Navigator.push(
                  context, 
                  MaterialPageRoute(builder: (context) => GamePositionedTiles())
                );
              },
            ),
          ),

          Card(
            color: Colors.grey[300],
            child: ListTile(
              title: Text(
                "Exo 7 : Jeu avec un BottomAppBar",
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
              trailing: Icon(
                Icons.more_outlined,
              ),
              onTap: (){
                Navigator.push(
                  context, 
                  MaterialPageRoute(builder: (context) => Exo7())
                );
              },
            ),
          ),

          Card(
            color: Colors.grey[300],
            child: ListTile(
              title: Text(
                "AMSE Web TP2 by Fan & Xuechu ",
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
              trailing: Icon(
                Icons.sentiment_satisfied_alt_outlined,
              ),
              onTap: (){ },
            ),
          )
        ],
      ),
    );
  }
}