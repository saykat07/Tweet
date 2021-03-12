import 'package:flutter/material.dart';
class Output extends StatelessWidget {
  final Function print;
   final String reedit;
  Output(this.print,this.reedit);
  @override
  Widget build(BuildContext context) {
    return Container(
      width:double.infinity ,
      child: RaisedButton(
        color: Colors.blueAccent,
        textColor: Colors.black54,
        child: Text(
          reedit,
        ),
        onPressed: print),
      
    );
  }
}