//import 'dart:html';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'dart:convert';

class HealthTracker extends StatefulWidget {
  const HealthTracker({Key? key}) : super(key: key);

  @override
  State<HealthTracker> createState() => _HealthTrackerState();
}

class _HealthTrackerState extends State<HealthTracker> {
  var now = new DateTime.now();

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
                  padding: new EdgeInsets.all(30),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(
                        height: 40,
                      ),
                      Text(showCurrentDate(),
                          style: TextStyle(
                              color: Color.fromRGBO(164, 109, 168, 100),
                              fontWeight: FontWeight.bold,
                              fontSize: 30)),
                      SizedBox(height: 30),
                      Text(
                        'Health Tracker',
                        style: TextStyle(
                            color: Color.fromRGBO(164, 109, 168, 100),
                            fontWeight: FontWeight.bold,
                            fontSize: 50),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      // health tracker and habit tracker
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
                                      Icons.dark_mode_rounded,
                                      color: Color.fromRGBO(164, 109, 168, 100),
                                      size: 65.0,
                                    ),
                                    Text(
                                      'Sleep Tracker',
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
                                      Icons.water,
                                      color: Color.fromRGBO(164, 109, 168, 100),
                                      size: 65.0,
                                    ),
                                    Text(
                                      'Water Intake',
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
                                      Icons.food_bank,
                                      color: Color.fromRGBO(164, 109, 168, 100),
                                      size: 65.0,
                                    ),
                                    Text(
                                      'Calories Consumed',
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
                                      Icons.monitor_heart_sharp,
                                      color: Color.fromRGBO(164, 109, 168, 100),
                                      size: 65.0,
                                    ),
                                    Text(
                                      'Heart Rate',
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
                                      Icons.bar_chart,
                                      color: Color.fromRGBO(164, 109, 168, 100),
                                      size: 65.0,
                                    ),
                                    Text(
                                      'Calories Burned',
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
                                      Icons.watch,
                                      color: Color.fromRGBO(164, 109, 168, 100),
                                      size: 65.0,
                                    ),
                                    Text(
                                      'Fitness Band',
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
                        height: 40,
                      ),
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
                              'Health Score',
                              style: TextStyle(
                                  color: Color.fromRGBO(164, 109, 168, 100),
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
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

String showCurrentDate() {
  String current_date = "";
  String get_month = DateFormat("MM").format(DateTime.now());
  String get_day = DateFormat("dd").format(DateTime.now());
  String get_year = DateFormat("yyyy").format(DateTime.now());
  print(get_day);
  int month_index = int.parse(get_month);

  List<String> months = [
    "JANUARY",
    "FEBURARY",
    "MARCH",
    "APRIL",
    "MAY",
    "JUNE",
    "JULY",
    "AUGUST",
    "SEPTEMBER",
    "OCTOBER",
    "NOVEMBER",
    "DECEMBER"
  ];
  current_date += get_day + "th " + months[month_index - 1] + ", " + get_year;
  print(current_date);
  return current_date;
}
