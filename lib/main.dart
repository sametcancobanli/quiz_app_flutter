// ignore_for_file: deprecated_member_use, prefer_const_constructors, avoid_print, use_key_in_widget_constructors, non_constant_identifier_names, unused_import, avoid_unnecessary_containers

import "package:flutter/material.dart";
import './question.dart';
import './answer.dart';
import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var question_number = 0;
  var total_score = 0;

  @override
  Widget build(BuildContext context) {
    const questions = [
      {
        "question": "En sevdiğim meyve nedir ?",
        "answers": [
          {"text": "elma", "puan": 3},
          {"text": "armut", "puan": 6},
          {"text": "kel mahmut", "puan": 10}
        ]
      },
      {
        "question": "En sevdiğim hayvan nedir ?",
        "answers": [
          {"text": "zebra", "puan": 3},
          {"text": "hamsi", "puan": 6},
          {"text": "fil", "puan": 10}
        ]
      },
      {
        "question": "En sevdiğim ders nedir ?",
        "answers": [
          {"text": "matematik", "puan": 10},
          {"text": "fizik", "puan": 6},
          {"text": "hiçbiri", "puan": 3}
        ]
      },
      {
        "question": "En sevdiğim şarkı nedir ?",
        "answers": [
          {"text": "ausgehen", "puan": 10},
          {"text": "martı", "puan": 6},
          {"text": "martılar", "puan": 3}
        ]
      }
    ];

    void answer_func(int score) {
      total_score += score;
      setState(() {
        question_number++;
      });
      print(question_number);
    }

    void restart() {
      setState(() {
        question_number = 0;
      });
      total_score = 0;
    }

    final total_question_number = questions.length;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: const Text("QuizApp"),
            centerTitle: true,
          ),
          body: question_number < total_question_number
              ? quiz(
                  questions: questions,
                  question_number: question_number,
                  answer_func: answer_func)
              : result(score: total_score, reset: restart)),
    );
  }
}
