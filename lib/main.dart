import 'package:flutter/material.dart';
import "question.dart";
import 'answer.dart';

main() => runApp(QuestionApp());

class QuestionAppState extends State<QuestionApp> {
  var _selectQuestion = 0;
  final questions = const [
    {
      "text": "What's your favorite music style? ",
      "anwser": ["Rock", "Blues", "Jazz"],
    },
    {
      "text": "What's your favorite Beer?",
      "anwser": ["Heineken", "Corona", "Stella Artois"],
    },
    {
      "text": "What's your favorite Drink",
      "anwser": ["Whiskey", "Beer", "Gin"],
    },
  ];

  void answer() {
    if (ExistQuestion) {
      setState(() {
        _selectQuestion++;
      });
    }
  }

  bool get ExistQuestion {
    return _selectQuestion < questions.length;
  }

  @override
  Widget build(BuildContext context) {
    List<String> answers =
        ExistQuestion ? questions[_selectQuestion].cast()["anwser"] : [];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.greenAccent,
          title: Text("Questions"),
        ),
        body: ExistQuestion
            ? Column(
                children: <Widget>[
                  Question(questions[_selectQuestion]["text"].toString()),
                  ...answers.map((e) => Answer(e, answer)).toList(),
                ],
              )
            : Center(
              child: Text (
                "Congratulations",
                style: TextStyle(fontSize: 28),
              ),
      ),
      ),
    );
  }
}




class QuestionApp extends StatefulWidget {
  QuestionAppState createState() {
    return QuestionAppState();
  }
}
