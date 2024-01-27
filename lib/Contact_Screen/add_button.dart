import 'package:contactapp/Contact_Screen/button_label.dart';
import 'package:flutter/material.dart';

class AddBtn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.only(left: 5, right: 2.5),
        child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
            child: ButtonLabel('Add')),
      ),
    );
  }
}
