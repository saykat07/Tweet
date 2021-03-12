import 'package:flutter/material.dart';
import './inside.dart';
import './outside.dart';
void main(){
runApp(Tweety(),);
}
class Tweety extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // 
    return TweetyState();
  }

}
class TweetyState extends State<Tweety>{
  final question =const[
    {'ques':'what\'s your name?',
      'ans':['A','B','C','D'],
    },
    {'ques':'what is your favorite place?',
        'ans':['America','Canada','Australia','china'],
    },
    {'ques':'what is your app name?',
        'ans':['knoter','knot','tweeter','twwetify'],
   },
  ];
  var problem=0;
  void type(){
   setState(() {
     problem=problem+1;
   });
   if(problem<question.length){
     print('Bingo,More question!');
   }else{
     print('No more Question');
   }
  }
Widget build (BuildContext context){
  return MaterialApp(home:Scaffold(
    appBar: AppBar(title: Text('Tweety'),),
   body: problem<question.length? Column (children: [
     Input(
       question[problem]['ques'],
     ),
    ... (question[problem]['ans'] as List <String>) .map((output){
     return Output(type, output);
    }).toList()
    
   ],):Center(child: Text('well done'),)
  ),);
  
}
}