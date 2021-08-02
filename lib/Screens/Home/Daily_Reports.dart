import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:nursery/Screens/Home/Get_images.dart';

class Daily_Reports extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Daily_Reports();
  }
}

class _Daily_Reports extends State<Daily_Reports> {
  var date = ["Day", "All days", "Select Date"];
  var selecteddate = "Select Date";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Daily Reports",
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
          SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Name of Kid",
                      style: TextStyle(
                        fontSize: 25,
                        letterSpacing: 2.0,
                        color: Colors.teal,
                        fontWeight: FontWeight.bold,
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
                  ],
                ),
                Center(
                  child: SingleChildScrollView(
                    child: Container(
                        margin: EdgeInsets.only(bottom: 20),
                        width: 500,
                        height: 200,
                        padding: new EdgeInsets.all(5.0),
                        child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            color: Colors.white,
                            elevation: 10,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                const ListTile(
                                    title: Text(
                                  ' Food...',
                                  style: TextStyle(
                                    letterSpacing: 5.0,
                                    color: Colors.teal,
                                    // color: Color.fromRGBO(174, 232, 228, 1),
                                    fontFamily: "pangolin",
                                  ),
                                ))
                              ],
                            ))),
                  ),
                ),
                SizedBox(),
                Center(
                  child: SingleChildScrollView(
                    child: Container(
                        width: 500,
                        height: 200,
                        padding: new EdgeInsets.all(10.0),
                        child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            color: Colors.white,
                            elevation: 10,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                const ListTile(
                                    title: Text(
                                  ' Mood...',
                                  style: TextStyle(
                                    letterSpacing: 5.0,
                                    color: Colors.teal,
                                    // color: Color.fromRGBO(174, 232, 228, 1),
                                    fontFamily: "pangolin",
                                  ),
                                ))
                              ],
                            ))),
                  ),
                ),
                SizedBox(),
                Center(
                  child: SingleChildScrollView(
                    child: Container(
                        width: 500,
                        height: 200,
                        padding: new EdgeInsets.all(10.0),
                        child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            color: Colors.white,
                            elevation: 10,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                const ListTile(
                                    title: Text(
                                  ' HomeWork... ',
                                  style: TextStyle(
                                    letterSpacing: 5.0,
                                    color: Colors.teal,
                                    // color: Color.fromRGBO(174, 232, 228, 1),
                                    fontFamily: "pangolin",
                                  ),
                                ))
                              ],
                            ))),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  child: Column(
                    children: [
                      RatingBar.builder(
                          initialRating: 3,
                          minRating: 1,
                          allowHalfRating: true,
                          direction: Axis.horizontal,
                          itemCount: 5,
                          itemBuilder: (context, _) {
                            Icon(
                              Icons.star,
                              color: Colors.red,
                            );
                          },
                          onRatingUpdate: (rating) {
                            print("Rating");
                          }),
                    ],
                  ),
                ),
                Container(
                  child: Align(
                    alignment: FractionalOffset.bottomCenter,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          margin: EdgeInsets.only(bottom: 40),
                          //color: Color.fromRGBO(255, 255, 220, 1),
                          width: 150,
                          height: 50,
                          child: RaisedButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                side: BorderSide(color: Colors.teal)),
                            onPressed: () {
                              // to connect with database to get reports
                            },
                            child: Text(
                              "View Reports",
                              style: TextStyle(
                                  letterSpacing: 2.0,
                                  fontFamily: "pangolin",
                                  color: Colors.teal,
                                  fontWeight: FontWeight.bold),
                            ),
                            textColor: Colors.teal,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 40),
                          //color: Color.fromRGBO(255, 255, 220, 1),
                          width: 150,
                          height: 50,

                          child: RaisedButton(
                            onPressed: () {
                              //   Navigator.of(context).push(get_Images());
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      get_Images()));
                              // go to page to get images
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
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ]));
  }
}
