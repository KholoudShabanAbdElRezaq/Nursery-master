import 'package:flutter/material.dart';
import 'package:nursery/Screens/Home/home.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

TextEditingController emailController = new TextEditingController();
TextEditingController nameController = new TextEditingController();

class _RegisterState extends State<Register> {
  bool checkboxval = false;
  final _formState = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: true,
        appBar: AppBar(
          title: Text(
            "victoria",
            style: TextStyle(
              letterSpacing: 5.0,
              color: Color.fromRGBO(174, 232, 228, 1),
              fontFamily: "pangolin",
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.teal,
        ),
        body: new Stack(children: <Widget>[
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("images/welcome_background.jpg"),
                    fit: BoxFit.cover)),
          ),
          SingleChildScrollView(
            child: Form(
              key: _formState,
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
                      color: Colors.white,
                      margin: EdgeInsets.all(18),
                      child: new Theme(
                        data: ThemeData(
                            primaryColor: Colors.teal,
                            primaryColorDark: Colors.teal,
                            cursorColor: Colors.teal),
                        child: TextFormField(
                          controller: nameController,
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
                            cursorColor: Colors.teal,
                            textSelectionHandleColor: Colors.teal),
                        child: TextFormField(
                          validator: (value) => value.isEmpty
                              ? 'You must enter a valid email'
                              : null,
                          controller: emailController,
                          style: TextStyle(
                              color: Colors.redAccent, fontFamily: "pangolin"),
                          decoration: InputDecoration(
                            labelText: "Email",
                            hintText: 'ex: test@gmail.com',
                            labelStyle: TextStyle(
                              color: Colors.teal,
                              fontFamily: "pangolin",
                            ),
                            prefixIcon: Icon(Icons.email, color: Colors.teal),
                            enabledBorder: new OutlineInputBorder(
                                borderSide: new BorderSide(color: Colors.teal)),
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
                            primaryColorDark: Colors.red,
                            cursorColor: Colors.teal),
                        child: TextFormField(
                          validator: (value) => value.length <= 6
                              ? 'Your password must be larger than 6 characters'
                              : null,
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
                    child: CheckboxListTile(
                      title: Text(
                        "Do you want to recieve Emails ?",
                        style: TextStyle(
                          fontFamily: "pangolin",
                          color: Colors.teal,
                        ),
                      ),

                      value: checkboxval,
                      activeColor: Colors.teal,
                      onChanged: (newValue) {
                        setState(() {
                          checkboxval = newValue;
                        });
                      },
                      controlAffinity: ListTileControlAffinity
                          .leading, //  <-- leading Checkbox
                    ),
                  ),
                  Container(
                    child: RaisedButton(
                      onPressed: () {
                        // while(Navigator.canPop(context)) {
                        //   Navigator.pop(context);
                        // }
                        //  Navigator.pop(context);
                        Navigator.of(context).push(_createRoute());
                      },
                      child: Text("Register",
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
          )
        ]));
  }
}

Route _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) =>
        Home(nameController.text, emailController.text),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      var begin = Offset(0, 1);
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
