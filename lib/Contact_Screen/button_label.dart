import 'package:flutter/material.dart';

class ButtonLabel extends StatelessWidget {
  String title;

  ButtonLabel(this.title, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(color: Colors.white, fontSize: 12),
    );
  }
}
