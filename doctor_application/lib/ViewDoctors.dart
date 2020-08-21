import 'package:doctor_application/doctor_class.dart';
import 'package:doctor_application/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Set_Doctor.dart';

void main() {
  runApp(new MaterialApp(
    home: new DoctorClass(),
  ));
}

class DoctorClass extends StatelessWidget {
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
  State<StatefulWidget> createState() => DoctorList();
}

class DoctorList extends State<_ViewDoctor>{
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
                'Doctor App',
                style: TextStyle(
                    fontSize: 20, color: Colors.black, fontFamily: 'Oxygen'),
              ),
              IconButton(
                icon: Icon(Icons.filter_list),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.more_vert),
                onPressed: () {},
              ),
            ],
          ),
        ),
        body: Container(
          child: ListView.builder(itemCount: doctor_class.dummyData.length,
          itemBuilder: (context, index){
            doctor_class _class = doctor_class.dummyData[index];
            return Column(
              children: <Widget>[
                Card(
                  child: ListTile(
                    leading: CircleAvatar(
                      radius: 30 ,
                      backgroundImage: NetworkImage(_class.image),
                    ),
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(_class.name),
                        Icon(Icons.call),
                        Icon(Icons.videocam),
                        SizedBox(
                          width: 16,
                        ),
                      ],
                    ),
                    trailing: Text(_class.field,
                    style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'Oxygen',
                      fontWeight: FontWeight.bold
                    ),),
                    subtitle: Text(_class.availability),
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => DoctorDescription()));
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