import 'package:flutter/material.dart';

class edit_Settings extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return Edit_Settings();
  }
}

class Edit_Settings extends State<edit_Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Update UR Info",
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
                SizedBox(height: 80,),
                // Container(
                //   alignment: FractionalOffset.center,
                //   height: 230,
                //   width: 230,
                //   decoration: BoxDecoration(
                //       image: DecorationImage(
                //           image: AssetImage("images/nursery_logo.png"))),
                //   //margin: EdgeInsets.only(bottom: 150),
                // ),
                Container(
                    color: Colors.white,
                    margin: EdgeInsets.all(18),
                    child: new Theme(
                      data: ThemeData(
                          primaryColor: Colors.teal,
                          primaryColorDark: Colors.teal,
                          cursorColor: Colors.teal),
                      child: TextFormField(
                        style: TextStyle(
                            color: Colors.redAccent, fontFamily: "pangolin"),
                        decoration: InputDecoration(
                          labelText: "Name",
                          labelStyle: TextStyle(
                            color: Colors.teal,
                            fontFamily: "pangolin",
                          ),
                          prefixIcon:
                              Icon(Icons.account_circle, color: Colors.teal),
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
                Container(
                    color: Colors.white,
                    margin: EdgeInsets.all(18),
                    child: new Theme(
                      data: ThemeData(
                          primaryColor: Colors.teal,
                          primaryColorDark: Colors.teal,
                          cursorColor: Colors.teal),
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        style: TextStyle(
                            color: Colors.redAccent, fontFamily: "pangolin"),
                        decoration: InputDecoration(
                          labelText: "Phone",
                          labelStyle: TextStyle(
                            color: Colors.teal,
                            fontFamily: "pangolin",
                          ),
                          prefixIcon: Icon(Icons.phone, color: Colors.teal),
                          enabledBorder: new OutlineInputBorder(
                              borderSide: new BorderSide(color: Colors.teal)),
                          border: new OutlineInputBorder(
                              borderSide: new BorderSide(color: Colors.teal)),
                          focusColor: Colors.teal,
                          prefixText: ' ',
                        ),
                      ),
                    )),
                Container(
                    color: Colors.white,
                    margin: EdgeInsets.all(18),
                    child: new Theme(
                      data: ThemeData(
                          primaryColor: Colors.teal,
                          primaryColorDark: Colors.teal,
                          cursorColor: Colors.teal),
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        style: TextStyle(
                            color: Colors.redAccent, fontFamily: "pangolin"),
                        decoration: InputDecoration(
                          labelText: "Email",
                          labelStyle: TextStyle(
                            color: Colors.teal,
                            fontFamily: "pangolin",
                          ),
                          prefixIcon: Icon(Icons.email, color: Colors.teal),
                          enabledBorder: new OutlineInputBorder(
                              borderSide: new BorderSide(color: Colors.teal)),
                          border: new OutlineInputBorder(
                              borderSide: new BorderSide(color: Colors.teal)),
                          focusColor: Colors.teal,
                          prefixText: ' ',
                        ),
                      ),
                    )),
                Container(
                    color: Colors.white,
                    margin: EdgeInsets.all(18),
                    child: new Theme(
                      data: ThemeData(
                          primaryColor: Colors.teal,
                          primaryColorDark: Colors.red,
                          cursorColor: Colors.teal),
                      child: TextFormField(
                        obscureText: true,
                        style: TextStyle(
                            color: Colors.redAccent, fontFamily: "pangolin"),
                        decoration: InputDecoration(
                          labelText: "Address",
                          labelStyle: TextStyle(
                            color: Colors.teal,
                            fontFamily: "pangolin",
                          ),
                          prefixIcon: Icon(Icons.location_city, color: Colors.teal),
                          border: new OutlineInputBorder(
                              borderSide: new BorderSide(color: Colors.teal)),
                          focusColor: Colors.teal,
                          prefixText: ' ',
                          enabledBorder: new OutlineInputBorder(
                              borderSide: new BorderSide(color: Colors.teal)),
                        ),
                      ),
                    )),
                Container(
                  child: RaisedButton(
                    onPressed: () {},
                      // while(Navigator.canPop(context)) {
                      //   Navigator.pop(context);
                      // }
                      //  Navigator.pop(context);
                      //Navigator.of(context).push(_createRoute());},
                    child: Text("UPdate",
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
          ),
        ],
      ),
    );
  }
}
