import 'package:flutter/material.dart';

class Message extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    const themeColor = Colors.deepPurpleAccent;

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Page One",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 28,
            ),
          ),
          backgroundColor: themeColor,
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Enter your message",
                  hintStyle: TextStyle(
                    fontSize: 18,
                  )
                ),
                style: TextStyle(
                  fontSize: 32,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: ElevatedButton(
                  onPressed: null,
                  style: ButtonStyle(
                    padding: MaterialStateProperty.all<EdgeInsetsGeometry>(EdgeInsets.symmetric(horizontal: 50, vertical: 15)),
                    backgroundColor: MaterialStateProperty.all<Color>(themeColor),
                    foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                  ),
                  child: Text(
                    "Send",
                    style: TextStyle(
                      fontSize: 28,
                    ),
                  ),
              ),
            )
          ],
        ),
      ),
    );
  }
}