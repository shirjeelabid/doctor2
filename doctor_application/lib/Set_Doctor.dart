import 'package:doctor_application/set_appointment.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'main.dart';

void main() {
  runApp(new MaterialApp(
    home: new DoctorDescription(),
  ));
}

class DoctorDescription extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: _ViewDoctor(),
    );
  }
}

class _ViewDoctor extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ViewDoctor_();
}

class _ViewDoctor_ extends State<_ViewDoctor>{
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xffffffff),
        accentColor: Color(0xffffffff),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) =>MyApp() ));
                },
              ),
              Text(
                'Doctor Profile',
                style: TextStyle(
                    fontSize: 20, color: Colors.black, fontFamily: 'Oxygen'),
              ),
              IconButton(
                icon: Icon(Icons.more_vert),
                onPressed: () {},
              ),
            ],
          ),
        ),
        body: SafeArea(
          child: Column(
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width,
                child: Stack(
                  alignment: AlignmentDirectional.center,
                  children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width,
                      child: Image.asset('images/doctor_background.jpg'),
                    ),

                    Column(
                      children: <Widget>[
                        CircleAvatar(
                            radius: 30,
                            backgroundImage: NetworkImage('https://img.freepik.com/free-vector/doctor-character-background_1270-84.jpg?size=338&ext=jpg')
                        ),
                        Text('Dr Haroon Fayyaz',
                        style: TextStyle(
                          fontSize: 18,
                            color: Colors.white,
                          fontFamily: 'Oxygen',
                          fontWeight: FontWeight.bold
                        ),),
                        Text('ENT Specialist',
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.white,
                              fontFamily: 'Oxygen',
                              fontWeight: FontWeight.bold
                          ),),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,

                          children: <Widget>[
                            Container(
                              margin: const EdgeInsets.fromLTRB(20,20 , 20, 5),
                              child: RaisedButton(
                                onPressed: () {

                                },

                                textColor: Colors.white,
                                padding: const EdgeInsets.all(0.0),

                                child: Container(
                                  width: 150,
                                  color: Color(0xff44eb4a),
                                  padding: const EdgeInsets.all(10.0),
                                  child: Text(
                                    'By video'.toUpperCase(),
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
                            Container(
                              margin: const EdgeInsets.fromLTRB(20, 20, 20, 5),
                              child: RaisedButton(
                                onPressed: () {

                                },
                                textColor: Colors.white,
                                padding: const EdgeInsets.all(0.0),
                                child: Container(
                                  width: 150,
                                  color: Color(0xff44eb4a),
                                  padding: const EdgeInsets.all(10.0),
                                  child: Text(
                                    'By Audio'.toUpperCase(),
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
                          ],
                        ),
                        RaisedButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => set_appointment()));
                          },
                          textColor: Colors.white,
                          padding: const EdgeInsets.all(0.0),
                          child: Container(
                            width: 300,
                            color: Colors.lightBlue,
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                              'Request future appointment   >'.toUpperCase(),
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
                      ],
                    )
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.fromLTRB(5, 5 , 5, 5),
                child: Card(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      const ListTile(
                        title: Text('About',
                        overflow: TextOverflow.visible,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.black,
                          fontFamily: 'Oxygen'
                        ),),
                        subtitle: Text('I am Medical Board Certified ENT with over 20 years of experience.',
                        overflow: TextOverflow.visible,
                        style: TextStyle(
                            fontSize: 14,
                          color: Colors.black,
                            fontFamily: 'Oxygen',
                        ),),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.fromLTRB(5, 5 , 5, 5),
                child: Card(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      const ListTile(
                        title: Text('Address',
                          overflow: TextOverflow.visible,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Colors.black,
                              fontFamily: 'Oxygen'
                          ),),
                        subtitle: Text('Jail Road, Near DPS, Faisalabad.',
                          overflow: TextOverflow.visible,
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                            fontFamily: 'Oxygen',
                          ),),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.fromLTRB(5, 5 , 5, 5),
                child: Card(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      const ListTile(
                        title: Text('Languages',
                          overflow: TextOverflow.visible,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Colors.black,
                              fontFamily: 'Oxygen'
                          ),),
                        subtitle: Text('English, Urdu, Punjabi, Pashto, Siraiki, Tamil',
                          overflow: TextOverflow.visible,
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                            fontFamily: 'Oxygen',
                          ),),
                      ),
                    ],
                  ),
                ),
              )

            ],
          ),
        ),
      ),
    );
  }

}