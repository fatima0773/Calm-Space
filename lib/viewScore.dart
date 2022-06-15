//import 'dart:html';
import 'package:calm_space/dashBoard.dart';
import 'package:calm_space/loginScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ViewScore extends StatefulWidget {
  const ViewScore({Key? key, required this.depressionScore}) : super(key: key);
  final int depressionScore;
  @override
  State<ViewScore> createState() => _ViewScoreState();
}

class _ViewScoreState extends State<ViewScore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(
          child: Text(
            'Calm Space',
            style: TextStyle(
                color: Color.fromARGB(255, 174, 103, 245),
                fontSize: 18,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
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
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(
                        height: 50,
                      ),
                      Text(
                        'Your Depression Score is',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        child: Text(
                          '${widget.depressionScore}',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 40,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      RaisedButton(
                        elevation: 0,
                        onPressed: () {},
                        padding: EdgeInsets.fromLTRB(30, 15, 30, 15),
                        shape: RoundedRectangleBorder(
                            side: BorderSide(
                                color: Color.fromARGB(255, 255, 255, 255),
                                width: 4),
                            borderRadius: BorderRadius.circular(2)),
                        color: Color.fromARGB(0, 255, 255, 255),
                        child: Text(
                          'Get Help?',
                          style: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      RaisedButton(
                        elevation: 0,
                        onPressed: () {},
                        padding: EdgeInsets.fromLTRB(30, 15, 30, 15),
                        shape: RoundedRectangleBorder(
                            side: BorderSide(
                                color: Color.fromARGB(255, 255, 255, 255),
                                width: 4),
                            borderRadius: BorderRadius.circular(2)),
                        color: Color.fromARGB(0, 255, 255, 255),
                        child: Text(
                          'Want to Talk?',
                          style: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
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
