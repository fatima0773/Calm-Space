import 'package:calm_space/dashBoard.dart';
import 'package:calm_space/healthTracker.dart';
import 'package:calm_space/oneTimeTest.dart';
import 'package:calm_space/testQuestions.dart';
import 'package:calm_space/welcomeScreen.dart';
import 'package:flutter/material.dart';
import 'loginScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Login UI',
      debugShowCheckedModeBanner: false,
      home: WelcomeScreen(),
    );
  }
}
