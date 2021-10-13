import 'package:flutter/material.dart';
import './question.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;
  void answerQuestion() {
    setState(() {
      questionIndex += 1;
    });

    print('Answer chosen');
  }

  @override
  Widget build(BuildContext context) {
    var question = [
      'what\'s your favorite color?',
      'what is it?',
      'what\'s your car?'
    ];
    return MaterialApp(
        home: Scaffold(
      appBar: new AppBar(
        title: new Text('My First App'),
      ),
      body: new Column(
        children: [
          Question(
            question[questionIndex],
          ),
          ElevatedButton(
            child: Text('Answer 1'),
            onPressed: answerQuestion,
          ),
          ElevatedButton(
            child: Text('Answer 2'),
            onPressed: answerQuestion,
          ),
          ElevatedButton(
            child: Text('Answer 3'),
            onPressed: answerQuestion,
          ),
        ],
      ),
    ));
  }
}
