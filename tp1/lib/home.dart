import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[50],
      appBar: AppBar(
        title: Text(
          "Your Treasure",
          textAlign: TextAlign.center,
        ),
        centerTitle: true,
        backgroundColor: Colors.deepPurple[300],
      ),
      body: ListView(
        children: [
          Card(
            child: List1(),
            color: Colors.red[50],
            elevation: 5,
            shadowColor: Colors.deepPurple[200],
          ),
          Card(
            child: List2(),
            color: Colors.red[50],
            elevation: 5,
            shadowColor: Colors.deepPurple[200],
          ),
          Card(
            child: List3(),
            color: Colors.red[50],
            elevation: 5,
            shadowColor: Colors.deepPurple[200],
          ),
          Card(
            child: List4(),
            color: Colors.red[50],
            elevation: 5,
            shadowColor: Colors.deepPurple[200],
          ),
          Card(
            child: List5(),
            color: Colors.red[50],
            elevation: 5,
            shadowColor: Colors.deepPurple[200],
          ),
          Card(
            child: List6(),
            color: Colors.red[50],
            elevation: 5,
            shadowColor: Colors.deepPurple[200],
          ),
          Card(
            child: List7(),
            color: Colors.red[50],
            elevation: 5,
            shadowColor: Colors.deepPurple[200],
          ),
          Card(
            child: List8(),
            color: Colors.red[50],
            elevation: 5,
            shadowColor: Colors.deepPurple[200],
          ),
          Card(
            child: List9(),
            color: Colors.red[50],
            elevation: 5,
            shadowColor: Colors.deepPurple[200],
          ),
        ],
      ),
    );
  }
}

class List1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(
        "images/ForrestGump.png",
      ),
      title: Text(
        "Forrest Gump",
        style: TextStyle(
          fontWeight: FontWeight.w500,
        ),
      ),
      subtitle: Text(
        "Robert Zemeckis",
      ),
      trailing: Icon(
        Icons.arrow_forward_ios,
      ),
    );
  }
}

class List2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(
        "images/Intouchables.png",
      ),
      title: Text(
        "Intouchables",
        style: TextStyle(
          fontWeight: FontWeight.w500,
        ),
      ),
      subtitle: Text(
        "Olivier Nakache",
      ),
      trailing: Icon(
        Icons.arrow_forward_ios,
      ),
    );
  }
}

class List3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(
        "images/Leon.png",
      ),
      title: Text(
        "Leon",
        style: TextStyle(
          fontWeight: FontWeight.w500,
        ),
      ),
      subtitle: Text(
        "Luc Besson",
      ),
      trailing: Icon(
        Icons.arrow_forward_ios,
      ),
    );
  }
}

class List4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(
        "images/LesChoristes.png",
      ),
      title: Text(
        "Les Choristes",
        style: TextStyle(
          fontWeight: FontWeight.w500,
        ),
      ),
      subtitle: Text(
        "Christophe Barratier",
      ),
      trailing: Icon(
        Icons.arrow_forward_ios,
      ),
    );
  }
}

class List5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(
        "images/LifeofPi.png",
      ),
      title: Text(
        "Life of Pi",
        style: TextStyle(
          fontWeight: FontWeight.w500,
        ),
      ),
      subtitle: Text(
        "LI An",
      ),
      trailing: Icon(
        Icons.arrow_forward_ios,
      ),
    );
  }
}

class List6 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(
        "images/RomanHoliday.png",
      ),
      title: Text(
        "Roman Holiday",
        style: TextStyle(
          fontWeight: FontWeight.w500,
        ),
      ),
      subtitle: Text(
        "William Wyler",
      ),
      trailing: Icon(
        Icons.arrow_forward_ios,
      ),
    );
  }
}

class List7 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(
        "images/TheShawshankRedemption.png",
      ),
      title: Text(
        "The Shawshank Redemption",
        style: TextStyle(
          fontWeight: FontWeight.w500,
        ),
      ),
      subtitle: Text(
        "Frank Darabont",
      ),
      trailing: Icon(
        Icons.arrow_forward_ios,
      ),
    );
  }
}

class List8 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(
        "images/TheTrumanShow.png",
      ),
      title: Text(
        "The Truman Show",
        style: TextStyle(
          fontWeight: FontWeight.w500,
        ),
      ),
      subtitle: Text(
        "Peter Weir",
      ),
      trailing: Icon(
        Icons.arrow_forward_ios,
      ),
    );
  }
}

class List9 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(
        "images/Titanic.png",
      ),
      title: Text(
        "Titanic",
        style: TextStyle(
          fontWeight: FontWeight.w500,
        ),
      ),
      subtitle: Text(
        "James Cameron",
      ),
      trailing: Icon(
        Icons.arrow_forward_ios,
      ),
    );
  }
}