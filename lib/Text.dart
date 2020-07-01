import 'package:flutter/material.dart';


class MyText extends StatelessWidget {

  String textHandler;

  MyText(this.textHandler);

  @override
  Widget build(BuildContext context) {
    return Text(textHandler);
    
  }
}