import 'package:flutter/material.dart';
import 'questionBank.dart';

QuestionBank questions = QuestionBank();

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
  List<Icon> results = [];

  void checkAns(bool userResponse) {
    bool realAns = questions.serveQuestion(questions.count).ans;
    if (userResponse == realAns) {
      setState(() {
        results.add(Icon(
          Icons.check,
          color: Colors.green,
        ));
      });
    } else {
      setState(() {
        results.add(Icon(
          Icons.close,
          color: Colors.red,
        ));
      });
    }
    questions.stopQnError();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
              flex: 4,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                    child: Text(
                        questions
                            .serveQuestion(questions.count)
                            .questionDisplayed,
                        style: TextStyle(color: Colors.white))),
              )),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: results,
              ),
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
