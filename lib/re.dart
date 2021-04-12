import 'package:flutter/material.dart';
import './inside.dart';
import './outside.dart';
class Part extends StatelessWidget {
  final List<Map<String,Object>>question;
  final int problem;
  final Function type;
  Part({this.problem,this.question,this.type});
  @override
  Widget build(BuildContext context) {
    return Column(
                  children: [
                    Input(
                      question[problem]['ques'],
                    ),
                    ...(question[problem]['ans'] as List<Map<String,Object>> ).map((output) {
                      return Output(() =>type(output['score']), output['text']);
                    }).toList()
                  ],
                );
  }
}