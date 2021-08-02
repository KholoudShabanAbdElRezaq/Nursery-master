import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StudentsNames extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _StudentsNames();
  }
}

class _StudentsNames extends State<StudentsNames> {
  String student;
  var date = ["Day", "All days", "Select Date"];
  var selecteddate = "Select Date";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Daily Notifications",
          style: TextStyle(
            letterSpacing: 5.0,
            color: Color.fromRGBO(174, 232, 228, 1),
            fontFamily: "pangolin",
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      body: Stack(children: [
        Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("images/welcome_background.jpg"),
                  fit: BoxFit.cover)),
        ),
        SizedBox(
          height: 30,
        ),
        Container(
          margin: EdgeInsets.symmetric(vertical: 25, horizontal: 10),
          child: Text("Notifications",
              style: TextStyle(
                  letterSpacing: 1.0,
                  color: Colors.teal,
                  fontFamily: "pangolin",
                  fontSize: 25)),
        ),
        SizedBox(
          height: 50,
        ),
        Container(
          width: 150,
          height: 50,
          margin: EdgeInsets.only(top: 530, left: 140),
          //color: Color.fromRGBO(255, 255, 220, 1),
          child: RaisedButton(
            onPressed: () {
              //Navigator.of(context).push(_createRoute());
            },
            child: Text("View Images",
                style: TextStyle(
                    letterSpacing: 2.0,
                    fontFamily: "pangolin",
                    color: Colors.teal,
                    fontWeight: FontWeight.bold)),

            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
                side: BorderSide(color: Colors.teal)),
            // color: Color.fromRGBO(174, 255, 220, 1),
            colorBrightness: Brightness.light,
          ),
        ),
        Container(
            alignment: Alignment.topRight,
            margin: EdgeInsets.all(20),
            child: Column(
              children: <Widget>[
                DropdownButton<String>(
                  items: date.map((String selectItem) {
                    return DropdownMenuItem<String>(
                      value: selectItem,
                      child: Text(selectItem),
                    );
                  }).toList(),
                  onChanged: (String thedate) {
                    setState(() {
                      selecteddate = thedate;
                    });
                  },
                  value: selecteddate,
                ),
                SizedBox(
                  height: 30,
                ),
              ],
            )),
      ]),
    );
  }
}
