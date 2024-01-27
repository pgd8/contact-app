// ignore_for_file: use_key_in_widget_constructors

import 'package:contactapp/Contact_Screen/field_label.dart';
import 'package:flutter/material.dart';

class NumberField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      child: TextField(
        keyboardType: TextInputType.phone,
        style: const TextStyle(color: Colors.black, fontSize: 12),
        decoration: InputDecoration(
            label: FieldLabel('Number'),
            prefixIcon: const Icon(
              Icons.numbers,
              color: Colors.blue,
            ),
            isDense: true,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25),
            )),
      ),
    );
  }
}
