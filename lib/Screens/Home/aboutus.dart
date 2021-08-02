import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:photo_view/photo_view.dart';

class Aboutus extends StatefulWidget {
  @override
  _AboutusState createState() => _AboutusState();
}

String kidName, parentMail;
final List imgList = [
  'images/nursery1.jpg',
  'images/nursery3.jpg',
  'images/nursery4.jpg',
];

class _AboutusState extends State<Aboutus> {
  @override
  Widget build(BuildContext context) {
    return (Scaffold(
        appBar: AppBar(
          title: Text(
            "about us",
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
            Column(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,

              children: <Widget>[
                Container(
                  child: new Swiper(
                    autoplay: true,
                    itemBuilder: (BuildContext context, int index) {
                      return (Image.asset(
                        imgList[index],
                        fit: BoxFit.fill,
                      ));
                    },
                    itemCount: 3,
                    itemWidth: 370.0,
                    itemHeight: 200.0,
                    layout: SwiperLayout.STACK,
                  ),
                ),
                Card(
                    margin: EdgeInsets.only(top: 20),
                    child: Text(
                      "Mission",
                      style: TextStyle(
                          letterSpacing: 5.0,
                          color: Colors.teal,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          fontFamily: "pangolin"),
                    )),
                Card(
                    child: Text(
                  "our aim throughout Caramela nursery is to provide the highest possible standard of childcare in safe , caring and simulating enviornmnet.",
                  style: TextStyle(
                      color: Colors.teal, fontSize: 17, fontFamily: "pangolin"),
                )),
                Card(
                  child: Text(
                      "We aim to assist the childrten in developing thier inter-personal relationships.",
                      style: TextStyle(
                          color: Colors.teal,
                          fontSize: 17,
                          fontFamily: "pangolin")),
                ),
                Card(
                  child: Text(
                      "- Bring your child to explore high qulaity class rooms          ",
                      style: TextStyle(
                          color: Colors.teal,
                          fontSize: 17,
                          fontFamily: "pangolin")),
                ),
                Card(
                  child: Text(
                      "- We  start our day in caramela at 7.00 am                              ",
                      style: TextStyle(
                          color: Colors.teal,
                          fontSize: 17,
                          fontFamily: "pangolin")),
                ),
                Card(
                  child: Text(
                      "- Ages accepted from 3 months                                           ",
                      style: TextStyle(
                          color: Colors.teal,
                          fontSize: 17,
                          fontFamily: "pangolin")),
                ),
                Card(
                  child: Text(
                      "- Special Medial Care                                                                 ",
                      style: TextStyle(
                          color: Colors.teal,
                          fontSize: 17,
                          fontFamily: "pangolin")),
                ),
              ],
            )
          ],
        )));
  }
}
