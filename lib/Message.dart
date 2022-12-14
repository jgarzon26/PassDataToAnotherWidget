import 'package:flutter/material.dart';
import 'Display.dart';

class Message extends StatefulWidget{

  @override
  State<Message> createState() => _MessageState();
}

class _MessageState extends State<Message> {

  final textController = TextEditingController();

  @override
  Widget build(BuildContext context){
    const themeColor = Colors.deepPurpleAccent;

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Page One" ,
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
                controller: textController,
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
                  onPressed: () {
                    setState(() {
                      var text = textController.text;
                      textController.text.isEmpty ? null : Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Display(text))
                      );
                      textController.clear();
                    });
                  },
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