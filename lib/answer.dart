import 'dart:html';

import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String textA;
  final void Function() whenSelection;

  Answer(this.textA, this.whenSelection);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.blue,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.green,
        ),
        child: Text(textA),
        onPressed: whenSelection,
      ),
    );
  }
}
