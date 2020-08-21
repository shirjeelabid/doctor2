import 'package:doctor_application/ViewDoctors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'list_class.dart';
import 'main.dart';

void main() {
  runApp(new MaterialApp(
    home: new PatientViewlist(),
  ));
}

class PatientViewlist extends StatelessWidget {
  //String email;
  //SetupProfile(this.email);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return MaterialApp(
      home: new _PatientViewList_(),
    );
  }
}

class _PatientViewList_ extends StatefulWidget {
  // String email;
  // _SetupProfile_(this.email);
  @override
  State<StatefulWidget> createState() => _PatientViewList();
}

class _PatientViewList extends State<_PatientViewList_> {
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
                'My Health',
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
          child: ListView.builder(
            itemCount: list_class.dummyData.length,
            itemBuilder: (context, index) {
              list_class _class = list_class.dummyData[index];
              return Column(
                children: <Widget>[

                  Card(
                    child: ListTile(
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => DoctorClass()));
                      },
                      leading: CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage(_class.image),
                      ),
                      title: Row(
                        children: <Widget>[
                          Text(_class.name),
                          SizedBox(
                            width: 16,
                          ),
                        ],
                      ),
                      subtitle: Text(_class.description),
                    ),
                  ),

                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
