import 'package:flutter/material.dart';

void main() => runApp(Quizzler());

class Quizzler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[900],
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.black,
          title: Text(
            "Quizzzler App",
            style: TextStyle(letterSpacing: 1.4, fontWeight: FontWeight.bold),
          ),
        ),
        body: QuizBody(),
      ),
    );
  }
}

class QuizBody extends StatefulWidget {
  QuizBody({Key key}) : super(key: key);

  @override
  _QuizBodyState createState() => _QuizBodyState();
}

class _QuizBodyState extends State<QuizBody> {
  @override
  Widget build(BuildContext context) {
    return Container(
       child: Column(),
    );
  }
}
