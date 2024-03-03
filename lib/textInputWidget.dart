import 'package:flutter/material.dart';

class TextInputWidget extends StatefulWidget {
  final Function(String) stringCallBack;

  const TextInputWidget(this.stringCallBack);

  @override
  State<TextInputWidget> createState() => _TextInputWidgetState();
}

class _TextInputWidgetState extends State<TextInputWidget> {
  final controller = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  void click() {
    widget.stringCallBack(controller.text);
    Focus.of(context).unfocus();
    controller.clear();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.message),
        hintText: "Type something",
        suffixIcon: IconButton(
          icon: Icon(Icons.send), 
          splashColor: Colors.blue,
          tooltip: "Post Message",
          onPressed: click,
        )
      ), // Lambda executes each time the text changes
    );
  }
}
