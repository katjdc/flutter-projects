//import the helper files or package.

import 'package:flutter/material.dart';

//create the main method

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'My firsts flutter app',
    home: Scaffold(
      appBar: AppBar(
        title: Text("My First Flutter App"),
      ),
      body:Material(
        color: Colors.lightBlueAccent,
        child: Center(
          child: Text(
            'Hi There',
            textDirection: TextDirection.ltr,
            style: TextStyle(
              fontSize: 40.0,
              fontWeight: FontWeight.bold,
              color: Colors.redAccent.shade100,
              ),
            ),
          ),
        ),
      ),
    ),
  );
}

