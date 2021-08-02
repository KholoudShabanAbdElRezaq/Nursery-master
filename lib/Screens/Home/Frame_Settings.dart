import 'package:flutter/material.dart';
import 'package:nursery/Screens/Home/radio_buttons.dart';

import 'Edit_Settings.dart';
import 'change_pass.dart';

class Frame_settings extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _frame();
  }
}

class _frame extends State<Frame_settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Settings",
            style: TextStyle(
              letterSpacing: 5.0,
              color: Color.fromRGBO(174, 232, 228, 1),
              fontFamily: "pangolin",
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.teal,
        ),
        body: Stack(children: <Widget>[
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("images/welcome_background.jpg"),
                    fit: BoxFit.cover)),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
              margin: EdgeInsets.symmetric(vertical: 20), child: myListView()),
        ]));
  }

  Widget myListView() {
    var list = ListView(
      children: <Widget>[
        Card(
          child: ListTile(
            leading: Icon(
              Icons.person,
              color: Colors.teal,
              size: 40,
            ),
            title: Text(
              "Personal Information",
              style: TextStyle(
                letterSpacing: 3.0,
                fontSize: 25,
                color: Colors.teal,
                fontFamily: "pangolin",
              ),
            ),
            subtitle: Text(
              "Update your name , phone numbers , email and address",
              style: TextStyle(color: Colors.black, fontSize: 20),
            ),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => edit_Settings()));
            },
          ),
        ),
        SizedBox(
          height: 50,
        ),
        Card(
          child: ListTile(
            leading: Icon(
              Icons.lock,
              color: Colors.teal,
              size: 40,
            ),
            title: Text(
              "Security and Login ",
              style: TextStyle(
                letterSpacing: 3.0,
                fontSize: 25,
                color: Colors.teal,
                fontFamily: "pangolin",
              ),
            ),
            subtitle: Text(
              "Change your Password",
              style: TextStyle(color: Colors.black, fontSize: 20),
            ),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => change_password()));
            },
          ),
        ),
        SizedBox(
          height: 50,
        ),
        Card(
          child: ListTile(
            leading: Icon(
              Icons.language,
              color: Colors.teal,
              size: 40,
            ),
            title: Text(
              "Language",
              style: TextStyle(
                letterSpacing: 3.0,
                fontSize: 25,
                color: Colors.teal,
                fontFamily: "pangolin",
              ),
            ),
            subtitle: Text(
              "Change Language",
              style: TextStyle(color: Colors.black, fontSize: 20),
            ),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => MyStatefulWidget()));
            },
          ),
        ),
      ],
    );
    return list;
  }
}
