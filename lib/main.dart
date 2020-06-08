import 'package:flutter/material.dart';

void main() => runApp(Quizzler());

class Quizzler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.black26[200],
      home: Scaffold(
              body: SafeArea(
                child: Column(
            children: <Widget>[
              Center(child: Text("lorem ipsum")),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: FlatButton(onPressed: (){}, child: Text("YES")),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: FlatButton(onPressed: (){}, child: Text("NO")),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
