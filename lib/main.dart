import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  int questionIndex = 0;

  void answerQuestion() {
    setState(() {
      questionIndex++;
    });
    print(questionIndex);
  }

  @override
  Widget build(BuildContext contex) {
    List<String> questions = [
      'What\'s your favorite color',
      'What\'s your favorite animal'
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My first App'),
        ),
        body: Column(
          children: <Widget>[
            Text(questions[questionIndex]),
            RaisedButton(
              child: Text('Answer 1'),
              onPressed: answerQuestion,
            ),
            RaisedButton(
              child: Text('Answer 2'),
              onPressed: () => answerQuestion(),
            ),
            RaisedButton(
              child: Text('Answer 3'),
              onPressed: () => answerQuestion(),
            ),
          ],
        ),
      ),
    );
  }
}
