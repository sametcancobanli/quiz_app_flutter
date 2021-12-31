// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables, non_constant_identifier_names, use_key_in_widget_constructors, prefer_const_constructors_in_immutables

import "package:flutter/material.dart";
import './answer.dart';
import './question.dart';

class quiz extends StatelessWidget {
  final questions;
  final question_number;
  final answer_func;

  quiz({this.questions, this.question_number, this.answer_func});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        question(
          quesiton_content: questions[question_number]["question"].toString(),
        ),
        ...(questions[question_number]["answers"] as List<Map<String, dynamic>>)
            .map((choose) {
          return answer(
            answer_func: answer_func,
            answer_content: choose["text"].toString(),
            answer_score: choose["puan"],
          );
        }).toList()
      ],
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
    );
  }
}
