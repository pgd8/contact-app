// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

class FieldLabel extends StatelessWidget {
  String title;

  FieldLabel(this.title);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(fontSize: 12, color: Colors.grey),
    );
  }
}
