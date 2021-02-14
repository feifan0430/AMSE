import 'package:flutter/material.dart';

class Media extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
      color: Colors.deepPurple[50],
      child: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.7,
          mainAxisSpacing: 10.0,
          crossAxisSpacing: 10.0,
        ),
        children: [
          Image.asset(
            "images/ForrestGump.png",
            fit: BoxFit.cover,
          ),
          Image.asset(
            "images/Intouchables.png",
            fit: BoxFit.cover,
          ),
          Image.asset(
            "images/Leon.png",
            fit: BoxFit.cover,
          ),
          Image.asset(
            "images/LesChoristes.png",
            fit: BoxFit.cover,
          ),
          Image.asset(
            "images/LifeofPi.png",
            fit: BoxFit.cover,
          ),
          Image.asset(
            "images/RomanHoliday.png",
            fit: BoxFit.cover,
          ),
          Image.asset(
            "images/TheShawshankRedemption.png",
            fit: BoxFit.cover,
          ),
          Image.asset(
            "images/TheTrumanShow.png",
            fit: BoxFit.cover,
          ),
          Image.asset(
            "images/Titanic.png",
            fit: BoxFit.cover,
          ),
          Icon(
            Icons.add_a_photo_sharp,
            size: 100,
            color: Colors.deepPurple[300],
          ),
        ],
      ),
    );
  }
}