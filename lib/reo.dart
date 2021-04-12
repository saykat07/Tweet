import 'package:flutter/material.dart';
class PartI extends StatelessWidget {
  final int resultScore;
  PartI(this.resultScore);
  String get resultPharse{
    String resultText;
    if(resultScore<=12){
      resultText='Mid test';
    }else if(resultScore<=10){
      resultText='Good test';

    }else if(resultScore<=8){
      resultText='Extraodinary test';
    }else {
      resultText='you are alien';
    }
    return resultText;
  }
  @override
  Widget build(BuildContext context) {
    return Center(
                  child: Text(
                    resultPharse,
                    style: TextStyle(fontSize: 30,fontWeight:FontWeight.bold),
                    textAlign:TextAlign.center
                    )
                    
                );
  }
}