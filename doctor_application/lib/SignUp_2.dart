import 'package:doctor_application/OptionsList.dart';
import 'package:doctor_application/SignUp_1.dart';
import 'package:doctor_application/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: new SignUpClass2(),
  ));
}

class SignUpClass2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: _SignUp(),
    );
  }
}

class _SignUp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => Register();
}

class Register extends State<_SignUp>{
  List<String> _gender = ['Male', 'Female'];
  String _selectedGender;
  bool _checkBoxVal1 = false, _checkBoxVal2 = false;
  String chosenDate;
  final dateController = TextEditingController();
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
          centerTitle: true,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.arrow_back),
                onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) =>MyApp() ));
                },
              ),
              Image.asset('images/mdliveLogo.jpg', width:100 , height:100 )
            ],
          ),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Text(
                    'Sign Up',
                    style: TextStyle(
                        fontSize: 35,
                        fontFamily: 'Oxygen',
                        color: Color(0xff000000),
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  width: 350,
                  margin: EdgeInsets.only(top: 10),
                  child: TextField(
                    readOnly: true,
                    onChanged: (String value) {
                      chosenDate = value;
                    },
                    onTap: () {
                      showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(2000),
                        lastDate: DateTime(2100),
                      ).then((value) {
                        String day = value.day.toString();
                        String month = value.month.toString();
                        String year = value.year.toString();

                        dateController.text = "$day-$month-$year";
                      });
                    },
                    controller: dateController,
                    showCursor: false,
                    maxLines: 1,
                    decoration:
                    InputDecoration.collapsed(hintText: 'Choose Date'),
                    style: TextStyle(
                      fontSize: 15,
                    ),
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

                      hintText: 'Phone Number',
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

                      hintText: 'ZIP Code',
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                Container(
                  width: 350,
                  child: DropdownButton(
                    hint: Text('Gender'),
                    value: _selectedGender,
                    onChanged: (newValue) {
                      setState(() {
                        _selectedGender = newValue;
                      });
                    },
                    items: _gender.map((gender) {
                      return DropdownMenuItem(
                        child: new Text(gender),
                        value: gender,
                      );
                    }).toList(),
                ),
                ),
                Container(
                  padding: EdgeInsets.all(5.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Checkbox(
                        value: _checkBoxVal1,
                        activeColor: Colors.orange,
                        onChanged: (newValue) {
                          setState(() {
                            print(newValue);
                            _checkBoxVal1 = newValue;
                          });
                        },
                      ),
                      Container(
                        child: Text(
                          'Dy you receive MDLIVE as a benefit through\nan employer, insurance provider or\norganization?',
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 15,
                            color: const Color(0xff6b6b6b),
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(5.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Checkbox(
                        value: _checkBoxVal2,
                        activeColor: Colors.orange,
                        onChanged: (newValue) {
                          setState(() {
                            print(newValue);
                            _checkBoxVal2 = newValue;
                          });
                        },
                      ),
                      Container(
                        child: Text(
                          'I agree to the Terms of Service and Privacy\nPolicy',
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 15,
                            color: const Color(0xff6b6b6b),
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: <Widget>[
                    Container(
                      width: 150,
                      margin: const EdgeInsets.fromLTRB(15, 5 , 5, 5),

                      child: FlatButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18),
                          side: BorderSide(color: Colors.green)
                        ),
                        color: Colors.white,
                        textColor: Colors.green,
                        onPressed: (){

                        },
                        child: Text('Previous'.toUpperCase(),
                        style: TextStyle(
                          fontFamily: 'Oxygen',
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),),
                      ),
                    ),
                    Container(
                      width: 200,
                      margin: const EdgeInsets.fromLTRB(5, 5 , 5, 5),
                      padding: EdgeInsets.all(8.0),

                      child: RaisedButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => PatientViewlist()));
                        },
                        textColor: Colors.white,
                        padding: const EdgeInsets.all(0.0),
                        child: Container(
                          width: 220,
                          color: Color(0xff44eb4a),
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            'Create Account'.toUpperCase(),
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
              ],
            ),
          ),
        ),
      ),
    );
  }

}