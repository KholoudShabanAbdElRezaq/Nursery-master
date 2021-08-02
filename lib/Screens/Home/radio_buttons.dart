import 'package:flutter/material.dart';

class MyStatefulWidget extends StatefulWidget {
  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  String radioItem = '';

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Language",
            style: TextStyle(
              letterSpacing: 5.0,
              color: Color.fromRGBO(174, 232, 228, 1),
              fontFamily: "pangolin",
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.teal,
        ),
        body: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("images/welcome_background.jpg"),
                      fit: BoxFit.cover)),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 50),
              child: Column(
                children: <Widget>[
                  RadioListTile(
                    groupValue: radioItem,
                    title: Text(
                      'English',
                      style: TextStyle(
                        letterSpacing: 3.0,
                        fontSize: 30,
                        color: Colors.teal,
                        fontFamily: "pangolin",
                      ),
                    ),
                    value: 'Item 1',
                    onChanged: (val) {
                      setState(() {
                        radioItem = val;
                      });
                    },
                  ),
                  SizedBox(
                    height: 100,
                  ),
                  RadioListTile(
                    groupValue: radioItem,
                    title: Text(
                      'Arabic',
                      style: TextStyle(
                        letterSpacing: 3.0,
                        fontSize: 30,
                        color: Colors.teal,
                        fontFamily: "pangolin",
                      ),
                    ),
                    value: 'Item 2',
                    onChanged: (val) {
                      setState(() {
                        radioItem = val;
                      });
                    },
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 40),
                    //color: Color.fromRGBO(255, 255, 220, 1),
                    width: 150,
                    height: 50,

                    child: RaisedButton(
                      onPressed: () {
                        // Navigator.of(context).push(_createRoute());
                      },
                      child: Text("Change",
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
                  )
                ],
              ),
            )
          ],
        ));
  }
}






