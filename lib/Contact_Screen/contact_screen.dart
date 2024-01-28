// ignore_for_file: use_key_in_widget_constructors

import 'package:contactapp/Contact_Screen/add_button.dart';
import 'package:contactapp/Contact_Screen/delete_button.dart';
import 'package:contactapp/Contact_Screen/name_field.dart';
import 'package:contactapp/Contact_Screen/number_field.dart';
import 'package:flutter/material.dart';

class ContactScreen extends StatefulWidget {
  @override
  State<ContactScreen> createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'contact app',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          NameField(),
          NumberField(),
          Row(
            children: [
              AddBtn(),
              DeleteBtn(),
            ],
          )
        ],
      ),
    );
  }
}
