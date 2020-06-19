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
            style: TextStyle(
                color: Colors.white,
                letterSpacing: 1.4,
                fontWeight: FontWeight.bold),
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
    List<Icon> results = [];
    int count = 0;
    List<String> questions = [
      "Question 1",
      "Question 2",
      "Question 3",
      "Question 4",
    ];
    List<bool> answers = [true, true, false, true];
    void checkAns(bool userResponse) {
      if (userResponse == true) {
        results.add(Icon(
          Icons.check,
          color: Colors.green,
        ));
      } else {
        results.add(Icon(
          Icons.close,
          color: Colors.red,
        ));
        count++;
      }
    }

    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
              flex: 4,
              child: Center(
                  child: Text("questions go here",
                      style: TextStyle(color: Colors.white)))),
          Expanded(
            child: Row(
              children: results,
            ),
          ),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: FlatButton(
                color: Colors.green,
                onPressed: () => checkAns(true),
                child: Text("True")),
          )),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: FlatButton(
                color: Colors.red,
                onPressed: () => checkAns(false),
                child: Text("False")),
          ))
        ],
      ),
    );
  }
}
