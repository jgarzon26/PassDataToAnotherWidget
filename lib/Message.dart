import 'package:flutter/material.dart';

class Message extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Write A Message"),
        ),
        body: Column(
          children: [
            TextField(),
          ],
        ),
      ),
    );
  }
}