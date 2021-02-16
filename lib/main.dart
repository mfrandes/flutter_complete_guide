import 'package:flutter/material.dart';

import './result.dart';
import './quiz.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final List<Map> questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': ['Black', 'Red', 'Green', 'white'],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': ['Rabit', 'Snake', 'Elephant', 'Lion'],
    },
    {
      'questionText': 'What\'s your favorite developer?',
      'answers': ['Mircea', 'Mircea', 'Mircea', 'Mircea'],
    },
  ];
  int _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex++;
    });
    print(_questionIndex);
    if (_questionIndex < questions.length) {
      print('more questions');
    } else {
      print('no more questions');
    }
  }

  @override
  Widget build(BuildContext contex) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('My first App'),
          ),
          body: _questionIndex < questions.length
              ? Quiz(_answerQuestion, questions, _questionIndex)
              : Result()),
    );
  }
}
