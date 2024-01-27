// ignore_for_file: use_key_in_widget_constructors

import 'package:contactapp/Contact_Screen/button_label.dart';
import 'package:flutter/material.dart';

class DeleteBtn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.only(left: 2.5, right: 5),
        child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
            child: ButtonLabel('Delete')),
      ),
    );
  }
}
