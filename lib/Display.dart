import 'package:flutter/material.dart';
import 'Message.dart';

class Display extends StatelessWidget{

  String _text;

  Display(this._text);

  @override
  Widget build(BuildContext context){
    const themeColor = Colors.deepPurpleAccent;

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: themeColor,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              size: 35,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: Text(
            "Page Two",
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: Text(
          _text,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 36,
          ),
        ),
      ),
    );
  }
}