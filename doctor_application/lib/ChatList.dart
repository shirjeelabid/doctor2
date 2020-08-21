import 'package:doctor_application/list_class.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'doctor_class.dart';
import 'main.dart';

void main() {
  runApp(new MaterialApp(
    home: new ChatListScreen(),
  ));
}

class ChatListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: _ChatListScreen(),
    );
  }
}

class _ChatListScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => chatlist();
}

class chatlist extends State<_ChatListScreen> {
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
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => MyApp()));
                },
              ),
              Text(
                'Chat List',
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
          margin: const EdgeInsets.fromLTRB(5, 5, 5, 5),
          child: ListView.builder(
              itemCount: doctor_class.dummyData.length,
              itemBuilder: (context, index) {
                doctor_class _class = doctor_class.dummyData[index];
                return Column(
                  children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width,
                      child: Card(
                        child: ListTile(
                          leading: CircleAvatar(
                            radius: 30,
                            backgroundImage: NetworkImage(_class.image),
                          ),
                          title: Text(
                            _class.name,
                            style: TextStyle(
                              fontSize: 16,
                              fontFamily: 'Oxygen',
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          subtitle: Text(
                            _class.field,
                            style: TextStyle(
                              fontSize: 13,
                              fontFamily: 'Oxygen',
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                );
              }),
        ),
      ),
    );
  }
}
