import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class change_password extends StatefulWidget {
  @override
  _change_passwordState createState() => _change_passwordState();
}

class _change_passwordState extends State<change_password> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Change Password",
          style: TextStyle(
            letterSpacing: 5.0,
            color: Color.fromRGBO(174, 232, 228, 1),
            fontFamily: "pangolin",
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      body: new Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("images/welcome_background.jpg"),
                    fit: BoxFit.cover)),
          ),
          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                SizedBox(
                  height: 80,
                ),
                Container(
                    color: Colors.white,
                    margin: EdgeInsets.all(18),
                    child: new Theme(
                      data: ThemeData(
                          primaryColor: Colors.teal,
                          primaryColorDark: Colors.teal,
                          cursorColor: Colors.teal),
                      child: TextFormField(
                        obscureText: true,
                        style: TextStyle(
                            color: Colors.redAccent, fontFamily: "pangolin"),
                        decoration: InputDecoration(
                          labelText: "Password",
                          labelStyle: TextStyle(
                            color: Colors.teal,
                            fontFamily: "pangolin",
                          ),
                          prefixIcon: Icon(Icons.lock, color: Colors.teal),
                          enabledBorder: new OutlineInputBorder(
                              borderSide: BorderSide(
                            color: Colors.teal,
                          )),
                          border: new OutlineInputBorder(
                              borderSide: new BorderSide(color: Colors.teal)),
                          prefixText: ' ',
                        ),
                      ),
                    )),
                SizedBox(
                  height: 80,
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 40),
                  //color: Color.fromRGBO(255, 255, 220, 1),
                  width: 150,
                  height: 50,

                  child: RaisedButton(
                    onPressed: () {
                      //  Navigator.of(context).push(_createRoute());
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
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
