import 'package:flutter/material.dart';

class Setting extends StatefulWidget {
  @override
  _SettingState createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[50],
      appBar: AppBar(
        title: Text("Login"),
        centerTitle: true,
        backgroundColor: Colors.deepPurple[300],
        brightness: Brightness.light,
      ),
      body: Container(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(10.0, 60.0, 10.0, 20.0),
              child: Container(
                child: Icon(
                  Icons.supervised_user_circle_sharp,
                  size: 100,
                  color: Colors.red[300],
                ),
                alignment: Alignment.center,
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(40.0, 50.0, 80.0, 0),
              child: TextField(
                controller: TextEditingController(),
                maxLength: 15,
                maxLines: 1,
                autofocus: true,
                decoration: InputDecoration(
                  labelText: "Please Input Your Username : ",
                  helperText: "Username",
                  
                  icon: Icon(
                    Icons.account_box_sharp,
                    color: Colors.red[300],
                    size: 30,
                  ),
                ),
                onSubmitted: (text) {
                  print("submit $text");
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(40.0, 0, 80.0, 50.0),
              child: TextField(
                controller: TextEditingController(),
                maxLength: 6,
                maxLines: 1,
                autofocus: true,
                decoration: InputDecoration(
                  labelText: "Please Input Your Password : ",
                  helperText: "Password",
                  icon: Icon(
                    Icons.fingerprint_sharp,
                    color: Colors.red[300],
                    size: 30,
                  ),
                ),
                onSubmitted: (text) {
                  print("submit $text");
                },
              ),
            ),
            OutlineButton(
              highlightColor: Colors.amber,
              onPressed: () {
                print("onPressed");
              }, 
              child: Text(
                "Login",
                style: TextStyle(
                  color: Colors.red[300],
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}