// 1) Create a new Flutter App (in this project) and output an AppBar and some text
// below it
// 2) Add a button which changes the text (to any other text of your choice)
// 3) Split the app into three widgets: App, TextControl & Text

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_assignment/Text.dart';

import './textControl.dart';

main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<MyApp> {
  String _text = "This is a random text sample";

  static const text = const 
  [
    "The first text",
    "The second text",
    "The third text",
    "The fourth text"
  ];
 
  @override
  Widget build(BuildContext context) {
    
    void _changeText()
    {
      setState(() {
        _text = text[Random.secure().nextInt(text.length)];
      });
    }

    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('flutter assignment app'),
            ),

            body: Container(
              width: double.infinity,
              child: Column(
                children: <Widget>[
                  Text(
                    'Click this button to change the text below',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                  TextControl(_changeText),
                  MyText(_text),
                ],
              ),
            )
            
            ));
  }
}
