import 'package:flutter/material.dart';
class Input extends StatelessWidget {
  final String edit;
  Input(this.edit);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        edit,
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}