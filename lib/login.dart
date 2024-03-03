import 'package:basic_flutter_app/MyHomePage.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My First Demo App')
    ),
    body: Body());
  }
}

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  String name = "";
  TextEditingController textEditingController = new TextEditingController();

  void click() {
    name = textEditingController.text;
    Navigator.push(context, MaterialPageRoute(builder: (context) => MyHomePage(name)));
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.all(10),
        child: TextField(
          controller: textEditingController,
          decoration: InputDecoration(
            border: OutlineInputBorder(borderSide: BorderSide(width: 5, color: Colors.black)),
            prefixIcon: Icon(Icons.person),
            hintText: "Enter your name",
            suffixIcon: IconButton(
              icon: Icon(Icons.done), 
              splashColor: Colors.blue,
              tooltip: "Submit",
              onPressed: click,
            )
          )
        )
      )
    );
  }
}