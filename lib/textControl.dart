import 'package:flutter/material.dart';


class TextControl extends StatelessWidget {
  Function textHandler;

  TextControl(this.textHandler);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(child: Text('Button'), onPressed: textHandler);
  }
}