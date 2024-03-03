import 'package:basic_flutter_app/Post.dart';
import 'package:basic_flutter_app/postList.dart';
import 'package:basic_flutter_app/textInputWidget.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  final String name;

  MyHomePage(this.name);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Post> posts = [];

  void addPost(String text) {
    // Use set state to force the component to re-render when function is called
    setState(() {
      posts.add(Post(text, widget.name));
    });
  }

    // Setups page with a structure to add to with other widgets
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My First Demo App')
      ),
      body: Column(
        children: <Widget>[
          Expanded(child: PostList(posts)), // Expanded fills the space available
          Expanded(child: TextInputWidget(addPost)) // If we added brackets to passed function it would mean we were calling it
          
        ] 
      ),
    );
  }
}
