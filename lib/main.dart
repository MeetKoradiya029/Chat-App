import 'package:chat_app/Home_Page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(chat());
}

class chat extends StatelessWidget {
  const chat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

