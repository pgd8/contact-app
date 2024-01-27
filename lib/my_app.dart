// ignore_for_file: use_key_in_widget_constructors

import 'package:contactapp/Contact_Screen/contact_screen.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'contact app',
      home: ContactScreen(),
    );
  }
}
