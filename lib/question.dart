// ignore_for_file: non_constant_identifier_names, camel_case_types, prefer_const_constructors, deprecated_member_use, use_key_in_widget_constructors, prefer_const_constructors_in_immutables, must_be_immutable

import "package:flutter/material.dart";

class question extends StatelessWidget {
  String quesiton_content;

  question({
    required this.quesiton_content,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(25),
      child: (Text(
        quesiton_content,
        textAlign: TextAlign.center,
        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
      )),
    );
  }
}
