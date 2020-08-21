import 'package:doctor_application/patients_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'ChatScreen.dart';
import 'main.dart';

void main() {
  runApp(new MaterialApp(
    home: new PatientsAppointments(),
  ));
}

class PatientsAppointments extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: _PatientsAppointments(),
    );
  }
}

class _PatientsAppointments extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _patientsAppointments_();
}

class _patientsAppointments_ extends State<_PatientsAppointments>{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
                'Patients List',
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
        body: Container(
          width: MediaQuery.of(context).size.width,
          margin: const EdgeInsets.fromLTRB(4, 5, 5, 5),
          child: ListView.builder(itemCount: patients_list.dummyData.length,
              itemBuilder: (context, index){
                patients_list _class = patients_list.dummyData[index];
                return Column(
                  children: <Widget>[
                    Card(
                      child: ListTile(
                        leading: CircleAvatar(
                          radius: 30 ,
                          backgroundImage: NetworkImage(_class.image),
                        ),
                        title: Row(
                          children: <Widget>[
                            Text(_class.name,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Oxygen',
                              fontSize: 16,
                              color: Colors.black,
                            ),),
                            SizedBox(
                              width: 16,
                            ),

                          ],
                        ),
                        trailing: Text(_class.date,
                          style: TextStyle(
                              fontSize: 14,
                              fontFamily: 'Oxygen',
                            color: Colors.black,
                          ),),
                        subtitle: Text(_class.gender,
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                          fontFamily: 'Oxygen',
                        ),),
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => ChatScreenClass()));
                        },
                      ),
                    ),

                  ],
                );
              }
          ),

        ),
      ),
    );

  }

}