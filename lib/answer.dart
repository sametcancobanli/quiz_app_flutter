// ignore_for_file: camel_case_types, use_key_in_widget_constructors, prefer_const_constructors, deprecated_member_use, must_be_immutable, non_constant_identifier_names

import "package:flutter/material.dart";

class answer extends StatelessWidget {
  Function answer_func;
  String answer_content;
  int answer_score;

  answer({
    required this.answer_func,
    required this.answer_content,
    required this.answer_score,
  });

  @override
  Widget build(BuildContext context) {
    return (RaisedButton(
        child: Text(answer_content),
        onPressed: () => answer_func(answer_score)));
  }
}
