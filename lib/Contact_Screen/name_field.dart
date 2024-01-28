// ignore_for_file: use_key_in_widget_constructors

import 'package:contactapp/Contact_Screen/field_label.dart';
import 'package:contactapp/Data_Classes/contact_data_class.dart';
import 'package:flutter/material.dart';

class NameField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      child: TextField(
        style: const TextStyle(color: Colors.black, fontSize: 12),
        decoration: InputDecoration(
            prefixIcon: const Icon(
              Icons.drive_file_rename_outline,
              color: Colors.blue,
            ),
            isDense: true,
            label: FieldLabel('Name'),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25),
            )),
      ),
    );
  }
}
