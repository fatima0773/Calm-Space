//import 'dart:html';

import 'package:calm_space/dashBoard.dart';
import 'package:calm_space/loginScreen.dart';
import 'package:calm_space/testQuestions.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class OneTimeTest extends StatefulWidget {
  OneTimeTest({Key? key}) : super(key: key);

  @override
  State<OneTimeTest> createState() => _OneTimeTestState();
}

class _OneTimeTestState extends State<OneTimeTest> {
  Widget buildName() {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Please Enter Your Name',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 6,
                    offset: Offset(0, 2),
                  )
                ]),
            height: 60,
            child: TextField(
              keyboardType: TextInputType.emailAddress,
              style: TextStyle(color: Colors.black87),
              decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 14),
                prefixIcon: Icon(
                  Icons.person,
                  color: Color(0x66bbaacc),
                ),
                hintText: 'Name',
                hintStyle: TextStyle(
                  color: Colors.black38,
                ),
              ),
            ),
          )
        ]);
  }

  Widget buildGender() {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Please Select Your Gender',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
              alignment: Alignment.centerLeft,
              child: Column(
                children: <Widget>[
                  RaisedButton(
                    onPressed: () {},
                    padding: EdgeInsets.all(15),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    color: Color.fromRGBO(250, 242, 251, 1),
                    child: Text(
                      'Male',
                      style: TextStyle(
                          color: Color.fromRGBO(164, 109, 168, 100),
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  RaisedButton(
                    onPressed: () {},
                    padding: EdgeInsets.all(15),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    color: Color.fromRGBO(250, 242, 251, 1),
                    child: Text(
                      'Female',
                      style: TextStyle(
                          color: Color.fromRGBO(164, 109, 168, 100),
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  RaisedButton(
                    onPressed: () {},
                    padding: EdgeInsets.all(15),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    color: Color.fromRGBO(250, 242, 251, 1),
                    child: Text(
                      'Neutral',
                      style: TextStyle(
                          color: Color.fromRGBO(164, 109, 168, 100),
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                ],
              ))
        ]);
  }

  Widget buildQuestion() {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Do you have any previous psychological issues?',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
              alignment: Alignment.centerLeft,
              child: Row(
                children: <Widget>[
                  RaisedButton(
                    onPressed: () {},
                    padding: EdgeInsets.all(15),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    color: Color.fromRGBO(250, 242, 251, 1),
                    child: Text(
                      'Yes',
                      style: TextStyle(
                          color: Color.fromRGBO(164, 109, 168, 100),
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  RaisedButton(
                    onPressed: () {},
                    padding: EdgeInsets.all(15),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    color: Color.fromRGBO(250, 242, 251, 1),
                    child: Text(
                      'No',
                      style: TextStyle(
                          color: Color.fromRGBO(164, 109, 168, 100),
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  RaisedButton(
                    onPressed: () {},
                    padding: EdgeInsets.all(15),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    color: Color.fromRGBO(250, 242, 251, 1),
                    child: Text(
                      'Not Sure',
                      style: TextStyle(
                          color: Color.fromRGBO(164, 109, 168, 100),
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                ],
              ))
        ]);
  }

  Widget buildAgeGroup() {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Please Select Your Age Group',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
              alignment: Alignment.centerLeft,
              child: Row(
                children: <Widget>[
                  RaisedButton(
                    onPressed: () {},
                    padding: EdgeInsets.all(15),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    color: Color.fromRGBO(250, 242, 251, 1),
                    child: Text(
                      '5-18',
                      style: TextStyle(
                          color: Color.fromRGBO(164, 109, 168, 100),
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  RaisedButton(
                    onPressed: () {},
                    padding: EdgeInsets.all(15),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    color: Color.fromRGBO(250, 242, 251, 1),
                    child: Text(
                      '19-30',
                      style: TextStyle(
                          color: Color.fromRGBO(164, 109, 168, 100),
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  RaisedButton(
                    onPressed: () {},
                    padding: EdgeInsets.all(15),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    color: Color.fromRGBO(250, 242, 251, 1),
                    child: Text(
                      '30-50',
                      style: TextStyle(
                          color: Color.fromRGBO(164, 109, 168, 100),
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  RaisedButton(
                    onPressed: () {},
                    padding: EdgeInsets.all(15),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    color: Color.fromRGBO(250, 242, 251, 1),
                    child: Text(
                      '50+',
                      style: TextStyle(
                          color: Color.fromRGBO(164, 109, 168, 100),
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ))
        ]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: GestureDetector(
          child: Stack(
            children: <Widget>[
              Container(
                height: double.infinity,
                width: double.infinity,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                      Color.fromARGB(255, 174, 103, 245),
                      Color.fromARGB(255, 154, 103, 206),
                      Color.fromARGB(255, 164, 123, 204),
                      Color.fromARGB(255, 201, 184, 218),
                    ])),
                child: SingleChildScrollView(
                  physics: AlwaysScrollableScrollPhysics(),
                  padding: EdgeInsets.symmetric(horizontal: 25, vertical: 90),
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Let\'s Start!',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      buildName(),
                      SizedBox(
                        height: 30,
                      ),
                      buildGender(),
                      SizedBox(
                        height: 30,
                      ),
                      buildAgeGroup(),
                      SizedBox(
                        height: 30,
                      ),
                      buildQuestion(),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 25),
                        width: double.infinity,
                        child: RaisedButton(
                          elevation: 5,
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => TestQuestions()),
                            );
                          },
                          padding: EdgeInsets.all(20),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)),
                          color: Colors.white,
                          child: Text(
                            'Start Test',
                            style: TextStyle(
                                color: Color.fromARGB(255, 150, 111, 189),
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      )
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
