import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: new ChatScreenClass(),
  ));
}

class ChatScreenClass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xFF4E45FF),
        accentColor: Color(0xFF4E45FF),
      ),
      debugShowCheckedModeBanner: false,
      routes: <String, WidgetBuilder>{
        //'/signup': (BuildContext context) => new SignupPage(),
      },
      home: _ChatScreen(),
    );
  }


}

class _ChatScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ChatScreen_();
}

class _ChatScreen_ extends State<_ChatScreen>{

  MediaQueryData queryData;
  @override
  Widget build(BuildContext context) {
    queryData = MediaQuery.of(context);

    var widthD = queryData.size.width;
    var heightD = queryData.size.height;

    return new Scaffold(

      appBar: AppBar(
        titleSpacing: 0,
        leading: Container(
          padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
          margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
          width: 15,
          child: IconButton(
            icon: Icon(Icons.arrow_back, size: 20),
            onPressed: () {

            },

          ),
        ),
        title: Row(
          children: <Widget>[
            GestureDetector(
              child: ClipOval(
                //borderRadius: BorderRadius.circular(100.0),
                child: Image.network(
                  'https://www.pinkvilla.com/files/styles/contentpreview/public/liam-hemsworth-miley-cyrus-instagram.jpg?itok=d0Ss6_SV',
                  width: 40,
                  height: 40,
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
            Flexible(
              child: Container(
                margin: EdgeInsets.only(left: 10),
                child: Text(
                  'Shirjeel',
                  style: TextStyle(
                    fontFamily: 'Oxygen',
                    fontSize: 17,
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
            ),
          ],
        ),
        automaticallyImplyLeading: true,
        actions: <Widget>[
          Container(
            padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
            margin: EdgeInsets.fromLTRB(0, 0, 18, 0),
            width: 20,
            child: IconButton(
              icon: Icon(
                Icons.phone,
                size: 22,
              ),
              color: Colors.white,
              onPressed: (){},
            ),
          ),
          Container(
            width: 22,
            padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
            margin: EdgeInsets.fromLTRB(0, 0, 4, 0),
            child: IconButton(
              icon: Icon(
                Icons.videocam,
                size: 22,
              ),
              color: Colors.white,
              onPressed:(){}
            ),
          ),
          FlatButton(
              child: Text('Join Call',
                  style: TextStyle(
                    color: Colors.white,
                  )),
//                  color: myColors.appBarIcons,
              onPressed: () {

              }),
        ],
      ),
      resizeToAvoidBottomPadding: false,
      backgroundColor: const Color(0xffffffff),
      body:
      Transform.translate(
        offset: Offset(0.0,-1*MediaQuery.of(context).viewInsets.bottom),
//        offset: Offset(0,0),
        child: SafeArea(

          child: Column(
//            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[

              MessageBubble(text: 'Hi!',isMe: true, isText: true,time: '20/08/20',),
              MessageBubble(text: 'Hi! How are You?',isMe: false, isText: true,time: '20/08/20',),
              Transform.translate(offset: Offset(0.0,520),
              child: Container(
//                margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
                child: Row(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(0),
                      width: 30.0,
                      child: IconButton(
                        icon: Icon(
                          Icons.image,
                          size: 22,
                        ),
                        color: Colors.grey,
                        onPressed: ()  {

                        },
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(0),
                      width: 30.0,
                      child: IconButton(
                        icon: Icon(
                          Icons.camera_alt,
                          size: 22,
                        ),
                        color: Colors.grey,
                        onPressed: ()  {

                        },
                      ),
                    ),
                    Expanded(
                      child: Container(
                        //padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                        margin: EdgeInsets.fromLTRB(5, 0, 2, 0),
                        height: 45,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(38.0),
                          color: const Color(0xfff7f7f7),
                          border: Border.all(
                              width: 0.3, color: const Color(0xff707070)),
                        ),
                        child: Row(
                          children: <Widget>[
                            SizedBox(
                              width: 10,
                            ),
                            SizedBox(
                              width: 175,
                              child: Container(
                                alignment: Alignment.center,
                                child: TextField(
                                  style: TextStyle(
                                    fontFamily: 'Oxygen',
                                    fontSize: 15,
                                    color: Colors.black,

                                  ),
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hoverColor: Colors.yellow,
                                    hintText: 'Write your message here',
                                    hintStyle: TextStyle(
                                      fontSize: 14,
                                      color: const Color(0xffa0a0a0),

                                    ),
                                  ),
                                  maxLines: null,
                                  keyboardType: TextInputType.text,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 25, 0),
                      padding: EdgeInsets.all(0),
                      width: 20.0,
                      child: IconButton(
                        icon: Icon(
                          Icons.send,
                          size: 24,
                        ),
                        color:  Color(0xFF4E45FF),
                        onPressed:()
                        {

                        },
                      ),
                    ),
                  ],
                ),
              ),),

//              Container(
////                margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
//                child: Row(
//                  children: <Widget>[
//                    Container(
//                      padding: EdgeInsets.all(0),
//                      width: 30.0,
//                      child: IconButton(
//                        icon: Icon(
//                          Icons.image,
//                          size: 22,
//                        ),
//                        color: Colors.grey,
//                        onPressed: ()  {
//
//                        },
//                      ),
//                    ),
//                    Container(
//                      padding: EdgeInsets.all(0),
//                      width: 30.0,
//                      child: IconButton(
//                        icon: Icon(
//                          Icons.camera_alt,
//                          size: 22,
//                        ),
//                        color: Colors.grey,
//                        onPressed: ()  {
//
//                        },
//                      ),
//                    ),
//                    Expanded(
//                      child: Container(
//                        //padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
//                        margin: EdgeInsets.fromLTRB(5, 0, 2, 0),
//                        height: 45,
//                        decoration: BoxDecoration(
//                          borderRadius: BorderRadius.circular(38.0),
//                          color: const Color(0xfff7f7f7),
//                          border: Border.all(
//                              width: 0.3, color: const Color(0xff707070)),
//                        ),
//                        child: Row(
//                          children: <Widget>[
//                            SizedBox(
//                              width: 10,
//                            ),
//                            SizedBox(
//                              width: 175,
//                              child: Container(
//                                alignment: Alignment.center,
//                                child: TextField(
//                                  style: TextStyle(
//                                    fontFamily: 'Oxygen',
//                                    fontSize: 15,
//                                    color: Colors.black,
//
//                                  ),
//                                  decoration: InputDecoration(
//                                    border: InputBorder.none,
//                                    hoverColor: Colors.yellow,
//                                    hintText: 'Write your message here',
//                                    hintStyle: TextStyle(
//                                      fontSize: 14,
//                                      color: const Color(0xffa0a0a0),
//
//                                    ),
//                                  ),
//                                  maxLines: null,
//                                  keyboardType: TextInputType.text,
//                                ),
//                              ),
//                            ),
//                          ],
//                        ),
//                      ),
//                    ),
//                    Container(
//                      margin: EdgeInsets.fromLTRB(0, 0, 25, 0),
//                      padding: EdgeInsets.all(0),
//                      width: 20.0,
//                      child: IconButton(
//                        icon: Icon(
//                          Icons.send,
//                          size: 24,
//                        ),
//                        color:  Color(0xFF4E45FF),
//                        onPressed:()
//                        {
//
//                        },
//                      ),
//                    ),
//                  ],
//                ),
//              ),

            ],
          ),
        ),
      ),
    );
  }

}


class MessageBubble extends StatelessWidget{

  MessageBubble({this.text, this.isMe,this.isText, this.time});

  var text,time;
  final bool isMe,isText;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: isMe ? CrossAxisAlignment.end: CrossAxisAlignment.start,
        children: <Widget>[
          Material(
            borderRadius: isMe ? BorderRadius.only(topLeft: Radius.circular(30.0),
              bottomLeft: Radius.circular(30.0),
              bottomRight: Radius.circular(30.0),
            ) : BorderRadius.only(topRight: Radius.circular(30.0),
              bottomLeft: Radius.circular(30.0),
              bottomRight: Radius.circular(30.0),
            ),
            elevation: 5.0,
            color: isMe ? Color(0xFF4E45FF) : Colors.white,
            child: Padding(
                padding: EdgeInsets.symmetric(vertical: 10.0,horizontal: 20.0),
                child: isText
                    ? Text('$text',
                  style: TextStyle(
                    color: isMe ? Colors.white : Colors.black54,
                    fontSize: 15.0,
                  ),
                )
                    :  Container(
                  child: FlatButton(
                    child: Material(
//                      child: CachedNetworkImage(
//                        placeholder: (context, url) => Container(
//                          child: CircularProgressIndicator(
//                            valueColor: AlwaysStoppedAnimation<Color>(Colors.lightBlueAccent),
//                          ),
//                          width: 200.0,
//                          height: 200.0,
//                          padding: EdgeInsets.all(70.0),
//                          decoration: BoxDecoration(
//                            borderRadius: BorderRadius.all(
//                              Radius.circular(8.0),
//                            ),
//                          ),
//                        ),
//                        errorWidget: (context, url, error) => Material(
//                          child: Image.asset(
//                            'images/dr.jpeg',
//                            width: 200.0,
//                            height: 200.0,
//                            fit: BoxFit.cover,
//                          ),
//                          borderRadius: BorderRadius.all(
//                            Radius.circular(8.0),
//                          ),
//                          clipBehavior: Clip.hardEdge,
//                        ),
//                        imageUrl: text,
//                        width: 200.0,
//                        height: 200.0,
//                        fit: BoxFit.cover,
//                      ),
                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                      clipBehavior: Clip.hardEdge,
                    ),
                    onPressed: () {
//                      Navigator.push(
////                          context, MaterialPageRoute(builder: (context) => FullPhoto(url: text));
//                          context, MaterialPageRoute(builder: (context) => FullPhoto(url: text));
//                          );
                    },
                    padding: EdgeInsets.all(0),
                  ),
//                margin: EdgeInsets.only(bottom: isLastMessageRight(index) ? 20.0 : 10.0, right: 10.0),
                )
            ),
          ),
          Text(time.toString()),
        ],
      ),
    );
  }
}