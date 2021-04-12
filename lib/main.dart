import 'package:flutter/material.dart';
import './re.dart';
import './reo.dart';

void main() {
  runApp(
    Tweety(),
  );
}

class Tweety extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    //
    return TweetyState();
  }
}

class TweetyState extends State<Tweety> {
  final _question = const [
    {
      'ques': 'what\'s your name?',
      'ans': [
        {'text': 'A', 'score': 10},
        {'text': 'B', 'score': 8},
        {'text': 'C', 'score': 6},
        {'text': 'D', 'score': 4}
      ],
    },
    {
      'ques': 'what is your favorite place?',
      'ans': [
        {'text': 'America', 'score': 10},
        {'text': 'Canada', 'score': 8},
        {'text': 'Australia', 'score': 6},
        {'text': 'China', 'score': 4}
      ]
    },
    {
      'ques': 'what is your app name?',
      'ans': [
         {'text': 'knoter', 'score': 10},
        {'text': 'knot', 'score': 8},
        {'text': 'tweeter', 'score': 6},
        {'text': 'tweetyfy', 'score': 4}
      ]
    },
  ];
  var _problem = 0;
  var _totalScore=0;
  void _type(int score) {
    _totalScore +=score;
    setState(() {
      _problem = _problem + 1;
    });
    if (_problem < _question.length) {
      print('Bingo,More question!');
    } else {
      print('No more Question');
    }
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Tweety'),
          ),
          body: _problem < _question.length
              ? Part(problem: _problem, type: _type, question: _question)
              : PartI(_totalScore)),
    );
  }
}
