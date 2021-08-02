import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:nursery/Screens/Home/Daily_Reports.dart';
import 'package:nursery/Screens/Home/Edit_Settings.dart';
import 'package:nursery/Screens/Home/aboutus.dart';
import 'package:nursery/Screens/Home/register.dart';
import 'package:nursery/Screens/Home/welcome.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:io';

import 'Daily_Notifacation.dart';
import 'Frame_Settings.dart';
import 'contactushelper.dart';

class Home extends StatefulWidget {
  Home(String name, String mail) {
    kidName = name;
    parentMail = mail;
  }
  @override
  _HomeState createState() {
    return _HomeState();
  }
}

String kidName, parentMail;
String path = "images/kid_logo.png";

class Choice {
  const Choice({this.title, this.icon});

  final String title;
  final IconData icon;
}

class _HomeState extends State<Home> {
  File imageFile;
  _openGallery(BuildContext context) async {
    var pic = await ImagePicker.pickImage(source: ImageSource.gallery);
    this.setState(() {
      imageFile = pic;
    });
    Navigator.of(context).pop();
  }

  void _openCamera(BuildContext context) async {
    var pic = await ImagePicker.pickImage(source: ImageSource.camera);
    this.setState(() {
      imageFile = pic;
    });
    Navigator.of(context).pop();
  }

  void customLaunch(command) async {
    if (await canLaunch(command)) {
      await launch(command);
    } else {
      print(' could not launch $command');
    }
  }

  List<String> textanimation = new List();
  @override
  void initState() {
    super.initState();
    textanimation.add("v");
    textanimation.add("vi");
    textanimation.add("vic");
    textanimation.add("vict");
    textanimation.add("victo");
    textanimation.add("victor");
    textanimation.add("victori");
    textanimation.add("victoria");
  }

  Choice choice = new Choice(title: "contact us", icon: Icons.phone);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.blue,
      // backgroundColor: Image.asset('images/welcome_background.jpg' , fit: BoxFit.cover,).color,
      appBar: AppBar(
        actions: <Widget>[
          // action button
          IconButton(
            icon: Icon(
              choice.icon,
              color: Color.fromRGBO(174, 232, 228, 1),
              size: 30,
            ),
            onPressed: () {
              ContactUsHelper.exit(context);
            },
          )
        ],
        title: TyperAnimatedTextKit(
          isRepeatingAnimation: true,
          pause: Duration(milliseconds: 1000),
          speed: Duration(milliseconds: 1),
          text: textanimation,
          textStyle: TextStyle(
              fontSize: 20.0,
              fontFamily: "pangolin",
              letterSpacing: 5.0,
              color: Color.fromRGBO(174, 232, 228, 1)),
        ),
        backgroundColor: Color.fromRGBO(255, 117, 107, 1),
        iconTheme: IconThemeData(color: Color.fromRGBO(174, 232, 228, 1)),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            // Image.asset('images/welcome_background.jpg' ),
            image: AssetImage('images/welcome_background.jpg'),
            fit: BoxFit.cover,
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
                decoration:
                    BoxDecoration(color: Color.fromRGBO(255, 117, 107, 1)),
                accountName: Text(
                  kidName,
                  style: TextStyle(
                      letterSpacing: 5.0,
                      color: Color.fromRGBO(174, 232, 228, 1),
                      fontFamily: "pangolin",
                      fontSize: 20),
                ),
                accountEmail: Text(parentMail,
                    style: TextStyle(
                        letterSpacing: 3.0,
                        color: Color.fromRGBO(174, 232, 228, 1),
                        fontFamily: "pangolin",
                        fontSize: 15)),
                currentAccountPicture: GestureDetector(
                  onTap: () {
                    _showChoiceDialog(context);
                    setState(() {
                      //  print("heeeeeee" + imageFile.path);
                      //   path = imageFile.path;
                    });
                  },
                  child: CircleAvatar(
                    backgroundColor: Color.fromRGBO(174, 232, 228, 1),
                    child: Image.asset(
                      path,
                      scale: 0.8,
                    ),
                  ),
                )),
            Card(
              shape: RoundedRectangleBorder(
                  side: new BorderSide(
                      color: Color.fromRGBO(255, 117, 107, 1), width: 1.0),
                  borderRadius: BorderRadius.circular(4.0)),
              child: ListTile(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) => StudentsNames()));
                },
                title: Text("Daily Notifications",
                    style: TextStyle(
                        letterSpacing: 1.0,
                        color: Colors.teal,
                        fontFamily: "pangolin",
                        fontSize: 17)),
                leading: Icon(
                  Icons.notifications,
                  color: Colors.teal,
                ),
              ),
            ),
            Card(
                shape: RoundedRectangleBorder(
                    side: new BorderSide(
                        color: Color.fromRGBO(255, 117, 107, 1), width: 1.0),
                    borderRadius: BorderRadius.circular(4.0)),
                child: ListTile(
                  onTap: () {
                    Navigator.of(context).pop();
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext context) => Daily_Reports()));
                  },
                  title: Text("Daily Reports ",
                      style: TextStyle(
                          letterSpacing: 1.0,
                          color: Colors.teal,
                          fontFamily: "pangolin",
                          fontSize: 17)),
                  leading: Icon(
                    Icons.map,
                    color: Colors.teal,
                  ),
                )),
            Card(
                shape: RoundedRectangleBorder(
                    side: new BorderSide(
                        color: Color.fromRGBO(255, 117, 107, 1), width: 1.0),
                    borderRadius: BorderRadius.circular(2.0)),
                child: ListTile(
                  title: Text("Permission Notes",
                      style: TextStyle(
                          letterSpacing: 1.0,
                          color: Colors.teal,
                          fontFamily: "pangolin",
                          fontSize: 17)),
                  leading: Icon(
                    Icons.flag,
                    color: Colors.teal,
                  ),
                )),
            Card(
                shape: RoundedRectangleBorder(
                    side: new BorderSide(
                        color: Color.fromRGBO(255, 117, 107, 1), width: 1.0),
                    borderRadius: BorderRadius.circular(4.0)),
                child: ListTile(
                  onTap: () {
                    Navigator.of(context).pop();
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext context) => Aboutus()));
                  },
                  title: Text("Abouts us",
                      style: TextStyle(
                          letterSpacing: 1.0,
                          color: Colors.teal,
                          fontFamily: "pangolin",
                          fontSize: 17)),
                  leading: Icon(
                    Icons.info,
                    color: Colors.teal,
                  ),
                )),
            Card(
                shape: RoundedRectangleBorder(
                    side: new BorderSide(
                        color: Color.fromRGBO(255, 117, 107, 1), width: 1.0),
                    borderRadius: BorderRadius.circular(4.0)),
                child: ListTile(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext context) => Frame_settings()));
                  },
                  title: Text("Settings",
                      style: TextStyle(
                          letterSpacing: 1.0,
                          color: Colors.teal,
                          fontFamily: "pangolin",
                          fontSize: 17)),
                  leading: Icon(
                    Icons.settings,
                    color: Colors.teal,
                  ),
                )),
            Card(
                shape: RoundedRectangleBorder(
                    side: new BorderSide(
                        color: Color.fromRGBO(255, 117, 107, 1), width: 1.0),
                    borderRadius: BorderRadius.circular(4.0)),
                child: ListTile(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext context) => Welcome()));
                  },
                  title: Text("logout",
                      style: TextStyle(
                          letterSpacing: 1.0,
                          color: Colors.teal,
                          fontFamily: "pangolin",
                          fontSize: 17)),
                  leading: Icon(
                    Icons.rotate_left,
                    color: Colors.teal,
                  ),
                )),
            Container(
              child: ListTile(),
            ),
            Container(
              child: ListTile(),
            ),
            Container(
              child: ListTile(),
            ),
            Container(
                child: FlatButton(
              onPressed: () {
                customLaunch('https://www.facebook.com/Skillhubme');
              },
              child: Image.asset(
                'images/Skillhub.png',
                fit: BoxFit.cover, // this is the solution for border
                height: 50.0,
              ),
            )),
          ],
        ),
      ), //this will just add the Navigation Drawer Icon
    );
  }

  Future<void> _showChoiceDialog(BuildContext context) {
    return showDialog(
        context: context,
        builder: (BuildContext contxt) {
          return AlertDialog(
            title: Text(
              "Make a Choice",
              style: TextStyle(
                  letterSpacing: 1.0,
                  color: Color.fromRGBO(255, 117, 107, 1),
                  fontFamily: "pangolin",
                  fontSize: 17),
            ),
            content: SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  GestureDetector(
                    child: Container(
                      child: Text(
                        "Gallery",
                        style: TextStyle(
                            letterSpacing: 1.0,
                            color: Colors.teal,
                            fontFamily: "pangolin",
                            fontSize: 17),
                      ),
                    ),
                    onTap: () {
                      _openGallery(context);
                    },
                  ),
                  Padding(padding: EdgeInsets.all(8.0)),
                  GestureDetector(
                    child: Text(
                      "Camera",
                      style: TextStyle(
                          letterSpacing: 1.0,
                          color: Colors.teal,
                          fontFamily: "pangolin",
                          fontSize: 17),
                    ),
                    onTap: () {
                      _openCamera(context);
                    },
                  )
                ],
              ),
            ),
          );
        });
  }
}

Route _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => Aboutus(),
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
