// ignore_for_file: camel_case_types, avoid_unnecessary_containers, prefer_const_constructors, must_be_immutable, use_key_in_widget_constructors, deprecated_member_use, non_constant_identifier_names

import "package:flutter/material.dart";

class result extends StatelessWidget {
  int score;
  Function() reset;

  result({
    required this.score,
    required this.reset,
  });

  Widget score_header(int score) {
    if (score > 31) {
      return Text("Can you be a part of samet's heart?",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30));
    } else if (score <= 31 && score > 24) {
      return Text("Samet may love you!",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30));
    } else {
      return Text("I think you are a member of Samhate page!",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Container(
            child: score_header(score),
            margin: const EdgeInsets.all(35),
          ),
          RaisedButton(child: Text("Try again.."), onPressed: reset),
        ],
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
      ),
    );
  }
}
