// ignore_for_file: use_key_in_widget_constructors

import 'package:contactapp/Contact_Screen/button_label.dart';
import 'package:contactapp/Contact_Screen/field_label.dart';
import 'package:flutter/material.dart';

class ContactScreen extends StatefulWidget {
  @override
  State<ContactScreen> createState() => ContactScreenState();
}

class ContactScreenState extends State<ContactScreen> {
  List<String> names = [];
  TextEditingController nameController = TextEditingController();
  List<String> numbers = [];
  TextEditingController numController = TextEditingController();
  int counter = 0;

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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.all(20),
              child: TextField(
                controller: nameController,
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
            ), //Name Field
            Container(
              margin: const EdgeInsets.all(20),
              child: TextField(
                controller: numController,
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
            ), // Number Field
            Row(
              children: [
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.only(left: 5, right: 2.5),
                    child: ElevatedButton(
                        onPressed: () {
                          names.add(nameController.text);
                          numbers.add(numController.text);
                          nameController.clear();
                          numController.clear();
                          setState(() {});
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.green),
                        child: ButtonLabel('Add')),
                  ),
                ), // Add Button
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.only(left: 2.5, right: 5),
                    child: ElevatedButton(
                        onPressed: () {
                          counter = numbers.length-1;
                          names.removeAt(counter);
                          numbers.removeAt(counter);
                          setState(() {});
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.red),
                        child: ButtonLabel('Delete')),
                  ),
                ), // Delete Button
              ],
            ),
            Column(
              children: List.generate(
                  names.length,
                  (index) => Container(
                        width: double.infinity,
                        margin:
                            const EdgeInsets.only(top: 15, left: 15, right: 15),
                        decoration: BoxDecoration(
                            color: Colors.grey.shade300,
                            border: Border.all(color: Colors.black),
                            borderRadius: BorderRadius.circular(25)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin:
                                  const EdgeInsets.only(left: 15, right: 15),
                              child: Text(
                                ' Name : ${names[index]}',
                                style: const TextStyle(
                                  fontSize: 12,
                                ),
                              ),
                            ),
                            Container(
                              margin:
                              const EdgeInsets.only(left: 15, right: 15),
                              child: Text(
                                ' Number :  ${numbers[index]}',
                                style: const TextStyle(
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ],
                        ),
                      )),
            )
          ],
        ),
      ),
    );
  }
}
