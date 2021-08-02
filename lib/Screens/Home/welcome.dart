import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:nursery/Screens/Home/register.dart';
import 'package:nursery/app.localization.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

CarouselSlider instance;
List<String> textanimation = new List();

class _WelcomeState extends State<Welcome> {
  int counter = 0;
  @override
  void initState() {
    super.initState();
    textanimation.add("H");
    textanimation.add("HE");
    textanimation.add("HEA");
    textanimation.add("HEAL");
    textanimation.add("HEALT");
    textanimation.add("HEALTH");
    textanimation.add("HEALTHY");
    textanimation.add("S");
    textanimation.add("SP");
    textanimation.add("SPO");
    textanimation.add("SPOR");
    textanimation.add("SPORT");
    textanimation.add("SPORTS");
    int dur1 = 0;

    Future.delayed(Duration(milliseconds: dur1 + 8000), () {
      setState(() {
        // Here you can write your code for open new view
        path = "images/sports.png";
      });
    });
    Future.delayed(Duration(milliseconds: dur1 + 6000), () {
      setState(() {
        print("object");
        path = "images/bakery.png";
      });
    });
  }

  String path = "images/bakery.png";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("victoria",
            style: TextStyle(
              letterSpacing: 5.0,
              color: Color.fromRGBO(174, 232, 228, 1),
              fontFamily: "pangolin",
            ),
          ),
          centerTitle: true,
          backgroundColor: Color.fromRGBO(255, 117, 107, 1),
        ),
        body: Stack(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("images/welcome_background.jpg"),
                      fit: BoxFit.cover)),
            ),
            SingleChildScrollView(
                child: Form(
                    child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  alignment: FractionalOffset.center,
                  height: 230,
                  width: 230,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("images/nursery_logo.png"))),
                  //margin: EdgeInsets.only(bottom: 150),
                ),
                Container(
                  //     alignment: Alignment(1, 1),
                  height: 150,
                  width: 150,

                  decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage(path))),

                  margin: EdgeInsets.only(bottom: 50),
                ),
                Container(
                  child: TyperAnimatedTextKit(
                      isRepeatingAnimation: false,
                      pause: Duration(milliseconds: 1000),
                      speed: Duration(milliseconds: 1),
                      text: textanimation,
                      textStyle: TextStyle(
                          fontSize: 35.0,
                          fontFamily: "pangolin",
                          color: Colors.redAccent),
                      textAlign: TextAlign.start,
                      alignment:
                          //AlignmentDirectional.topStart
                          Alignment.topLeft),
                  margin: EdgeInsets.only(bottom: 70),
                ),
                Container(
                  child: Align(
                    alignment: FractionalOffset.bottomCenter,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(bottom: 40),
                          //color: Color.fromRGBO(255, 255, 220, 1),
                          width: 150,
                          height: 50,
                          child: RaisedButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                side: BorderSide(color: Colors.red)),
                            onPressed: () {},
                            child: Text(
                              AppLocalizations.of(context).Translate("second_string"),
                              style: TextStyle(
                                  letterSpacing: 2.0,
                                  fontFamily: "pangolin",
                                  color: Colors.redAccent,
                                  fontWeight: FontWeight.bold),
                            ),
                            textColor: Colors.redAccent,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 40),
                          //color: Color.fromRGBO(255, 255, 220, 1),
                          width: 150,
                          height: 50,

                          child: RaisedButton(
                            onPressed: () {
                              Navigator.of(context).push(_createRoute());
                            },
                            child: Text(
                                ("Register"),
                                style: TextStyle(
                                    letterSpacing: 2.0,
                                    fontFamily: "pangolin",
                                    color: Colors.redAccent,
                                    fontWeight: FontWeight.bold)),

                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                side: BorderSide(color: Colors.red)),
                            // color: Color.fromRGBO(174, 255, 220, 1),
                            colorBrightness: Brightness.light,
                          ),

                        ),
                      ],
                    ),
                  ),
                )
              ],
            )))
          ],
        ));
  }
}

class Welcome extends StatefulWidget {
  @override
  _WelcomeState createState() => _WelcomeState();
}

Route _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => Register(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      var begin = Offset(1, 0);
      var end = Offset.zero;
      var tween = Tween(begin: begin, end: end);
      var offsetAnimation = animation.drive(tween);

      return SlideTransition(
        position: offsetAnimation,
        child: child,
      );
    },
  );
}
