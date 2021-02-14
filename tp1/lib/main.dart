import 'package:tp1/about.dart';
import 'package:tp1/home.dart';
import 'package:tp1/setting.dart';
import 'package:tp1/media.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;
  List<Widget> _widget = <Widget>[
    new Home(),
    new Media(),
    new Setting(),
    new About(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Enjoy Your AMSE Life'),
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
        child: _widget.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: ("Home"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.perm_media_outlined),
            label: ("Media"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.build),
            label: ("Setting"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.import_contacts_outlined),
            label: ("About"),
          ),
        ],
        type: BottomNavigationBarType.fixed, //To show more than three bottoms.
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.deepPurple[300],
        onTap: _onItemTapped,
      ),
    );
  }
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}