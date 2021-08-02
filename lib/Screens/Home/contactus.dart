import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactUs extends StatelessWidget {
  List<String> textanimation = new List();
  ContactUs() {
    textanimation.add("v");
    textanimation.add("vi");
    textanimation.add("vic");
    textanimation.add("vict");
    textanimation.add("victo");
    textanimation.add("victor");
    textanimation.add("victori");
    textanimation.add("victoria");
  }
  void customLaunch(command) async {
    if (await canLaunch(command)) {
      await launch(command);
    } else {
      print(' could not launch $command');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: _buildchild(context),
    );
  }

  _buildchild(BuildContext context) => Container(
      height: 300,
      width: 300,
      decoration: BoxDecoration(
          color: Color.fromRGBO(174, 232, 228, 1),
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.all(Radius.circular(12))),
      child: SingleChildScrollView(
          child: Form(
              child: SingleChildScrollView(
        child: Column(children: <Widget>[
          SingleChildScrollView(
            child: Container(
              child: SingleChildScrollView(
                child: Center(
                    child: TyperAnimatedTextKit(
                  isRepeatingAnimation: true,
                  pause: Duration(milliseconds: 1000),
                  speed: Duration(milliseconds: 1),
                  text: textanimation,
                  textStyle: TextStyle(
                      fontSize: 20.0,
                      fontFamily: "pangolin",
                      letterSpacing: 5.0,
                      color: Color.fromRGBO(174, 232, 228, 1)),
                )),
              ),
              width: double.infinity,
              height: 40,
              decoration: BoxDecoration(
                  color: Colors.teal,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(12),
                      topRight: Radius.circular(12))),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text('Contact Us',
              style: new TextStyle(
                fontSize: 20.0,
                color: Colors.teal,
                fontFamily: 'pangolin',
              )),
          SizedBox(
            height: 25,
          ),
          SingleChildScrollView(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  SingleChildScrollView(
                    child: FlatButton(
                      onPressed: () {
                        customLaunch('https://www.facebook.com/Skillhubme');
                      },
                      child: Icon(
                        Icons.facebook,
                        color: Colors.teal,
                        size: 40,
                      ),
                      // child: Image.asset(
                      //   'Images/download.png',
                      //   fit: BoxFit.cover, // this is the solution for border
                      //    width: 50.0,
                      //    height: 50.0,
                      // ),
                    ),
                  ),
                  SingleChildScrollView(
                    child: FlatButton(
                      onPressed: () {
                        customLaunch(
                            'mailto:Sales@skillhub-me.com?subject=test%20subject&body=test%20body');
                      },
                      // child: Image.asset(
                      //   'Images/mail.png',
                      //   //fit: BoxFit.cover, // this is the solution for border
                      //   // width: 30.0,
                      //   // height: 30.0,
                      // ),
                      child: Icon(
                        Icons.language,
                        color: Colors.teal,
                        size: 40,
                      ),
                    ),
                  ),
                  SingleChildScrollView(
                    child: FlatButton(
                      onPressed: () {
                        customLaunch(
                            'mailto:Sales@skillhub-me.com?subject=test%20subject&body=test%20body');
                      },
                      // child: Image.asset(
                      //   'Images/mail.png',
                      //   //fit: BoxFit.cover, // this is the solution for border
                      //   // width: 30.0,
                      //   // height: 30.0,
                      // ),
                      child: Icon(
                        Icons.phone,
                        color: Colors.teal,
                        size: 40,
                      ),
                    ),
                  ),
                ]),
          ),
          SingleChildScrollView(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                SingleChildScrollView(
                  child: FlatButton(
                    onPressed: () {
                      customLaunch('tel:+0201201324717');
                    },
                  ),
                ),
                SingleChildScrollView(
                  child: FlatButton(
                    onPressed: () {
                      customLaunch(
                          'https://www.google.com/maps/search/?api=1&query=30.073723,31.021664');
                    },
                    // child: Image.asset(
                    //   'Images/location.png',
                    //   fit: BoxFit.cover, // this is the solution for border
                    //   width: 80.0,
                    //   height: 50.0,
                    // ),
                    // child: Icon(Icons.location_city , size: 40, color: Colors.teal,),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Row(mainAxisSize: MainAxisSize.min, children: <Widget>[
            RaisedButton(
                color: Colors.teal,
                shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(30.0)),
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text(
                  'Close',
                  style: TextStyle(
                      fontSize: 17.0,
                      fontFamily: "pangolin",
                      letterSpacing: 1.5,
                      color: Color.fromRGBO(174, 232, 228, 1)),
                )),
          ]),
        ]),
      ))));
}
