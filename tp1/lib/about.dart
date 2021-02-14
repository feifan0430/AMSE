import 'package:flutter/material.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Authors',
            textAlign: TextAlign.center,
          ),
          centerTitle: true,
          bottom: TabBar(
            tabs: <Widget>[
              Tab(
                text: 'FEI Fan',
              ),
              Tab(
                text: 'WANG Xuechu',
              ),
            ],
          ),
          brightness: Brightness.light,
          backgroundColor: Colors.deepPurple[300],
        ),
        body: TabBarView(
          children: <Widget>[
            new Fan(),
            new Xuechu(),
          ],
        ),
      ),
    );
  }
}

class Fan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[50],
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              "images/Fan.png",
              fit: BoxFit.cover,
              width: 150,
              height: 200,
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              "FEI Fan",
              style: TextStyle(
                color: Colors.grey[700],
                fontSize: 35,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            Text(
              "IMT LILLE DOUAI  -  Numérique  -  M1",
              style: TextStyle(
                color: Colors.grey[600],
                fontSize: 20,
                fontWeight: FontWeight.w400,
                fontStyle: FontStyle.italic,
              ),
            ),
            SizedBox(
              height: 3.0,
            ),
            Row(
              children: [
                Icon(
                  Icons.contact_mail_sharp,
                  color: Colors.grey[600],
                ),
                SizedBox(
                  width: 5.0,
                ),
                Text(
                  "fan.fei@etu.imt-lille-douai.fr",
                  style: TextStyle(
                    color: Colors.grey[600],
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.italic,
                  ),
                ),
              ],
            ),
          ],
        ),
        
      )
    );
  }
}

class Xuechu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[50],
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              "images/Xuechu.png",
              fit: BoxFit.cover,
              width: 150,
              height: 200,
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              "WANG Xuechu",
              style: TextStyle(
                color: Colors.grey[700],
                fontSize: 35,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            Text(
              "IMT LILLE DOUAI  -  Numérique  -  M1",
              style: TextStyle(
                color: Colors.grey[600],
                fontSize: 20,
                fontWeight: FontWeight.w400,
                fontStyle: FontStyle.italic,
              ),
            ),
            SizedBox(
              height: 3.0,
            ),
            Row(
              children: [
                Icon(
                  Icons.contact_mail_sharp,
                  color: Colors.grey[600],
                ),
                SizedBox(
                  width: 5.0,
                ),
                Text(
                  "xuechu.wang@etu.imt-lille-douai.fr",
                  style: TextStyle(
                    color: Colors.grey[600],
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.italic,
                  ),
                ),
              ],
            ),
          ],
        ),
        
      )
    );
  }
}