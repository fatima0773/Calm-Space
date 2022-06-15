//import 'dart:html';

import 'package:calm_space/dashBoard.dart';
import 'package:calm_space/loginScreen.dart';
import 'package:calm_space/viewScore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TestQuestions extends StatefulWidget {
  const TestQuestions({Key? key}) : super(key: key);

  @override
  State<TestQuestions> createState() => _TestQuestionsState();
}

class _TestQuestionsState extends State<TestQuestions> {
  int question_counter = 1;
  int depressionScore = 0;
  Widget buildTestQuestion(String Question) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        padding: EdgeInsets.fromLTRB(10, 10, 10, 25),
        decoration: BoxDecoration(
          color: Color.fromARGB(249, 187, 141, 191),
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                Question,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            buildQuestionOptions(),
          ],
        ),
      ),
    );
  }

  Widget buildQuestionOptions() {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
              //width: double.infinity,
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    RaisedButton(
                      onPressed: () {},
                      padding: EdgeInsets.all(15),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      color: Color.fromRGBO(250, 242, 251, 1),
                      child: Text(
                        'Not At All',
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
                      onPressed: () {
                        setState(() {
                          depressionScore = calculateScore(depressionScore, 1);
                        });
                      },
                      padding: EdgeInsets.all(15),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      color: Color.fromRGBO(250, 242, 251, 1),
                      child: Text(
                        'Several Days',
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
                      onPressed: () {
                        setState(() {
                          depressionScore = calculateScore(depressionScore, 2);
                        });
                      },
                      padding: EdgeInsets.all(15),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      color: Color.fromRGBO(250, 242, 251, 1),
                      child: Text(
                        'More Than Half The Days',
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
                      onPressed: () {
                        setState(() {
                          depressionScore = calculateScore(depressionScore, 3);
                        });
                      },
                      padding: EdgeInsets.all(15),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      color: Color.fromRGBO(250, 242, 251, 1),
                      child: Text(
                        'Nearly Everyday',
                        style: TextStyle(
                            color: Color.fromRGBO(164, 109, 168, 100),
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ))
        ]);
  }

  Widget buildNextQuestionBtn() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: RaisedButton(
        elevation: 5,
        onPressed: () {
          //question_counter = question_counter + 1;
          setState(() {
            if (question_counter < 10) {
              question_counter++;
            }
          });
        },
        padding: EdgeInsets.fromLTRB(55, 20, 55, 20),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        color: Color.fromRGBO(164, 109, 168, 100),
        child: Text(
          'Next',
          style: TextStyle(
              color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  Widget nextAction() {
    if (question_counter < 9) {
      return Center(child: buildNextQuestionBtn());
    } else if (question_counter == 10) {
      return Center(child: buildViewScoreBtn());
    } else {
      return Center(child: buildNextQuestionBtn());
    }
  }

  Widget buildViewScoreBtn() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: RaisedButton(
        elevation: 5,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => ViewScore(
                      depressionScore: depressionScore,
                    )),
          );
        },
        padding: EdgeInsets.fromLTRB(55, 20, 55, 20),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        color: Color.fromRGBO(164, 109, 168, 100),
        child: Text(
          'View Score',
          style: TextStyle(
              color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  Widget questionScreen() {
    return Scaffold(
        backgroundColor: Colors.white,
        body: AnnotatedRegion<SystemUiOverlayStyle>(
          value: SystemUiOverlayStyle.light,
          child: GestureDetector(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(15),
                    color: Color.fromRGBO(164, 109, 168, 100),
                    child: Center(
                      child: Text(
                        'Depression Test',
                        style: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontWeight: FontWeight.bold,
                            fontSize: 28),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Text(
                      'Question ' + question_counter.toString(),
                      style: TextStyle(
                          color: Color.fromRGBO(164, 109, 168, 100),
                          fontWeight: FontWeight.bold,
                          fontSize: 24),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  buildTestQuestion(getNextQuestion(question_counter)),
                  SizedBox(
                    height: 20,
                  ),
                  nextAction(),
                ]),
          ),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return questionScreen();
  }
}

String getNextQuestion(int index) {
  List<String> questions = [
    "How often you have been bothered by feeling depressed over the last two weeks?",
    "How often you have been bothered that you lost interest in things  over the last two weeks?",
    "How often you have been bothered by trouble faling asleep or sleeping too much over the last two weeks?",
    "How often you have been bothered by feeling tired over the last two weeks?",
    "How often you have been bothered by thoughts that you would be better  off dead over the last two weeks?",
    "How often you have been bothered by  thoughts that you are a failure over the last two weeks?",
    "How often you have been bothered that you have poor appetite over the last two weeks?",
    "How often you have been bothered that you are over reacting on small issues over the last two weeks?",
    "How often you have been bothered that you can not conceterate on things properly over the last two weeks?",
    "How often you interact with your friends and family members over the last two weeks?"
  ];
  String next_question = questions[index - 1];
  return next_question;
}

int calculateScore(int currentScore, int newScore) {
  return currentScore + newScore;
}
