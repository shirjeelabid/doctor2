import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

import 'SignUp_1.dart';

void main() {
  runApp(new MaterialApp(
    home: new MyApp(),
  ));
}

class MyApp extends StatefulWidget {

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {

    return new SplashScreen(
      seconds: 6,
      navigateAfterSeconds: new AfterSplash(),
      title: new Text(
        'WELCOME',
        style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0),
      ),
      image: new Image.asset('images/mdliveLogo.jpg'),
      backgroundColor: Colors.white,
      styleTextUnderTheLoader: new TextStyle(),
      photoSize: 160.0,
      loaderColor: Colors.red,
    );
  }
}

class AfterSplash extends StatelessWidget {
  bool _checkBoxVal = false;
  @override
  Widget build(BuildContext context) {
    return new Scaffold(

      resizeToAvoidBottomPadding: false,
      body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                child: Image.asset('images/mdliveLogo.jpg'),
                height: 200,
                width: 230,
              ),
              Container(
                margin: EdgeInsets.only(bottom: 10),
                child: Text(
                  'Sign In',
                  style: TextStyle(
                      fontSize: 30,
                      fontFamily: 'Oxygen',
                      color: Color(0xff000000),
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 10),
                width: 350,
                child: TextFormField(
                  autofocus: true,
                  textInputAction: TextInputAction.next,
                  onFieldSubmitted: (_) => FocusScope.of(context).nextFocus(),
                  textCapitalization: TextCapitalization.words,
                  decoration: InputDecoration(
                    border: UnderlineInputBorder(),
                    filled: false,

                    hintText: 'Username/Email',
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 10),
                width: 350,
                child: TextFormField(
                  autofocus: true,
                  textInputAction: TextInputAction.next,
                  onFieldSubmitted: (_) => FocusScope.of(context).nextFocus(),
                  textCapitalization: TextCapitalization.words,
                  decoration: InputDecoration(
                    border: UnderlineInputBorder(),
                    filled: false,

                    hintText: 'Password',
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    child: Checkbox(
                        value: _checkBoxVal,
                        activeColor: Colors.orange,
                        onChanged: (newValue) {
                          _checkBoxVal = newValue;
                        }
                    ),
                  ),
                  Container(
                    child: Text(
                      'Remember Username',
                      style: TextStyle(
                        fontFamily: 'Oxygen',
                        fontSize: 15,
                        color: Colors.black,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),

                ],
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                child: RaisedButton(
                  onPressed: () {

                  },
                  textColor: Colors.white,
                  padding: const EdgeInsets.all(0.0),
                  child: Container(
                    width: 220,
                 color: Color(0xff44eb4a),
                    padding: const EdgeInsets.all(10.0),
                    child: const Text(
                      'Login',
                      style: TextStyle(
                        fontFamily: 'Oxygen',
                        fontSize: 16,
                        color: const Color(0xffffffff),
                        fontWeight: FontWeight.w700,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    child: Text(
                      'New User?',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Oxygen',
                          color: Colors.black),
                    ),
                  ),
                  Container(
                    //TODO: Sign Up Button Container
                    child: FlatButton(
                      child: Text(
                        'Create an Account',
                        style: TextStyle(
                            fontFamily: 'Oxygen',
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff3126c9)),
                        textAlign: TextAlign.left,
                      ),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => SignUpClass()));
                      },
                    ),
                  )
                ],
              ),
            ],
          ),
        ),

    );
  }

 
}

