//import 'dart:html';
import 'package:calm_space/healthTracker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DashBoard extends StatefulWidget {
  @override
  _DashBoardState createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: GestureDetector(
          child: Stack(
            children: <Widget>[
              Container(
                height: double.infinity,
                width: double.infinity,
                child: SingleChildScrollView(
                  physics: AlwaysScrollableScrollPhysics(),
                  padding: EdgeInsets.symmetric(horizontal: 25, vertical: 35),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      CircleAvatar(
                        backgroundImage: AssetImage('assets\DSC_0112.jpg'),
                        radius: 40.0,
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        'Hi Fatima!',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'How are you feeling today?',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.sentiment_very_satisfied_outlined,
                            ),
                            color: Color.fromRGBO(164, 109, 168, 100),
                            iconSize: 65,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.sentiment_satisfied_rounded,
                            ),
                            color: Color.fromRGBO(164, 109, 168, 100),
                            iconSize: 65,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.sentiment_neutral_rounded),
                            color: Color.fromRGBO(164, 109, 168, 100),
                            iconSize: 65,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.mood_bad_rounded,
                            ),
                            color: Color.fromRGBO(164, 109, 168, 100),
                            iconSize: 65,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.sentiment_very_dissatisfied_rounded,
                            ),
                            color: Color.fromRGBO(164, 109, 168, 100),
                            iconSize: 65,
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      // want to talk button
                      Center(
                          child: Container(
                        height: 40,
                        width: double.infinity,
                        child: RaisedButton(
                          elevation: 0,
                          onPressed: () {},
                          padding: EdgeInsets.all(15),
                          shape: RoundedRectangleBorder(
                              side: BorderSide(
                                  color: Color.fromRGBO(164, 109, 168, 100),
                                  width: 4),
                              borderRadius: BorderRadius.circular(2)),
                          color: Colors.white,
                          child: Text(
                            'WANT TO TALK?',
                            style: TextStyle(
                                color: Color.fromRGBO(164, 109, 168, 100),
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      )),
                      SizedBox(
                        height: 30,
                      ),
                      // depression score
                      Center(
                        child: Container(
                          width: double.infinity,
                          child: RaisedButton(
                            elevation: 5,
                            onPressed: () {},
                            padding: EdgeInsets.all(15),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            color: Color.fromRGBO(250, 242, 251, 1),
                            child: Text(
                              'Depression Score',
                              style: TextStyle(
                                  color: Color.fromRGBO(164, 109, 168, 100),
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      // health tracker and habit tracker
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Expanded(
                            flex: 1,
                            child: Container(
                              margin: new EdgeInsets.only(right: 5),
                              child: RaisedButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => HealthTracker()),
                                  );
                                },
                                padding: EdgeInsets.all(15),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                color: Color.fromRGBO(250, 242, 251, 1),
                                child: Column(
                                  children: <Widget>[
                                    Icon(
                                      Icons.monitor_heart_outlined,
                                      color: Color.fromRGBO(164, 109, 168, 100),
                                      size: 45.0,
                                    ),
                                    Text(
                                      'Health Tracker',
                                      style: TextStyle(
                                          color: Color.fromRGBO(
                                              164, 109, 168, 100),
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Container(
                              margin: new EdgeInsets.only(left: 5),
                              child: RaisedButton(
                                onPressed: () {},
                                padding: EdgeInsets.all(15),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                color: Color.fromRGBO(250, 242, 251, 1),
                                child: Column(
                                  children: <Widget>[
                                    Icon(
                                      Icons.calendar_month,
                                      color: Color.fromRGBO(164, 109, 168, 100),
                                      size: 45.0,
                                    ),
                                    Text(
                                      'Habit Tracker',
                                      style: TextStyle(
                                          color: Color.fromRGBO(
                                              164, 109, 168, 100),
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      // Health tips and community
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Expanded(
                            flex: 1,
                            child: Container(
                              margin: new EdgeInsets.only(right: 5),
                              child: RaisedButton(
                                onPressed: () {},
                                padding: EdgeInsets.all(15),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                color: Color.fromRGBO(250, 242, 251, 1),
                                child: Column(
                                  children: <Widget>[
                                    Icon(
                                      Icons.tips_and_updates,
                                      color: Color.fromRGBO(164, 109, 168, 100),
                                      size: 45.0,
                                    ),
                                    Text(
                                      'Health Tips',
                                      style: TextStyle(
                                          color: Color.fromRGBO(
                                              164, 109, 168, 100),
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Container(
                              margin: new EdgeInsets.only(left: 5),
                              child: RaisedButton(
                                onPressed: () {},
                                padding: EdgeInsets.all(15),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                color: Color.fromRGBO(250, 242, 251, 1),
                                child: Column(
                                  children: <Widget>[
                                    Icon(
                                      Icons.group,
                                      color: Color.fromRGBO(164, 109, 168, 100),
                                      size: 45.0,
                                    ),
                                    Text(
                                      'Community',
                                      style: TextStyle(
                                          color: Color.fromRGBO(
                                              164, 109, 168, 100),
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      // daily journal and daily planner
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Expanded(
                            flex: 1,
                            child: Container(
                              margin: new EdgeInsets.only(right: 5),
                              child: RaisedButton(
                                onPressed: () {},
                                padding: EdgeInsets.all(15),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                color: Color.fromRGBO(250, 242, 251, 1),
                                child: Column(
                                  children: <Widget>[
                                    Icon(
                                      Icons.book,
                                      color: Color.fromRGBO(164, 109, 168, 100),
                                      size: 45.0,
                                    ),
                                    Text(
                                      'Daily Journal',
                                      style: TextStyle(
                                          color: Color.fromRGBO(
                                              164, 109, 168, 100),
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Container(
                              margin: new EdgeInsets.only(left: 5),
                              child: RaisedButton(
                                onPressed: () {},
                                padding: EdgeInsets.all(15),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                color: Color.fromRGBO(250, 242, 251, 1),
                                child: Column(
                                  children: <Widget>[
                                    Icon(
                                      Icons.notes_rounded,
                                      color: Color.fromRGBO(164, 109, 168, 100),
                                      size: 45.0,
                                    ),
                                    Text(
                                      'Daily Planner',
                                      style: TextStyle(
                                          color: Color.fromRGBO(
                                              164, 109, 168, 100),
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      // get help
                      Center(
                        child: Container(
                          width: double.infinity,
                          child: RaisedButton(
                            elevation: 5,
                            onPressed: () {},
                            padding: EdgeInsets.all(15),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            color: Color.fromRGBO(250, 242, 251, 1),
                            child: Text(
                              'Get Help',
                              style: TextStyle(
                                  color: Color.fromRGBO(164, 109, 168, 100),
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
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
