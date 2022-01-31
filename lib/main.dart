import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({ Key? key }) : super(key: key);
  
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion(){
    setState(() {
      _questionIndex++;
    });
  }

  @override
  Widget build(BuildContext context){
    var questions = [
      'What\'s your favourite color?',
      'What\'s your favourite animal?',
    ];
    return MaterialApp(home: Scaffold(
      appBar: AppBar(title: const Text('My first app'),),
      body: Column(children: [
        Question(questions[_questionIndex]),
        Answer(_answerQuestion),
        Answer(_answerQuestion),
        Answer(_answerQuestion),
      ],),
      )
    );
  }
}
  