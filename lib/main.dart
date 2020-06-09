import 'package:flutter/material.dart';
import 'package:flutter_demos/Question.dart';
import 'package:flutter_demos/answer.dart';
import './row.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
 
  Widget build(BuildContext context) {
    return Container();
  }

  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final questions = const [
      {
        'questionText': 'Q1',
        'answers': ['Black', 'Red', 'Green', 'White'],
      },
      {
        'questionText': 'Q2',
        'answers': ['Rabbit', 'Snake', 'Green', 'White'],
      },
      {
        'questionText': 'Q3',
        'answers': ['Rabbit3', 'Snake3', 'Green3', 'White3'],
      }
    ];
  // This widget is the root of your application.
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
      if (_questionIndex == 3) {
        _questionIndex = 0;
      }
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    
 
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Bar'),
        ),
        body: Column(
          children: [
            Question(
              questions[_questionIndex]['questionText'],
            ),
            ...(questions[_questionIndex]['answers'] as List<String>)
                .map((answer) {
              return Answer(_answerQuestion, answer);
            }).toList(),
          RowValues(),
          ],
        ),
      ),
    );
  }
}
