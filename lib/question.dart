import 'dart:html';

import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String text;

  Question(this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(text,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 28,
          )),
    );
  }
}
