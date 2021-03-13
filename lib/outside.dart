import 'package:flutter/material.dart';
class Output extends StatelessWidget {
  final Function print;
   final String reedit;
  Output(this.print,this.reedit);
  @override
  Widget build(BuildContext context) {
    return Container(
      width:double.infinity ,
      child: ElevatedButton(
        style: ButtonStyle(
       backgroundColor: MaterialStateProperty.all(Colors.yellow),
       
        ),
        
        child: Text(
          reedit,
          style: TextStyle(color: Colors.deepPurple),
          
        ),
        onPressed: print),
      
    );
  }

  //void buildColor() => color;
}