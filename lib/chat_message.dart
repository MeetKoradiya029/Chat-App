import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChatMessage extends StatelessWidget {
  final String text;

  const ChatMessage({Key? key, required this.text}) : super(key: key);

  static const String _name= "Pawan";

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(

            margin: EdgeInsets.only(right: 16),
            child: CircleAvatar(
              child: Text(_name[0]),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(_name, style: Theme.of(context).textTheme.subtitle1,),
              Container(
                margin: EdgeInsets.only(top: 10),
                child: Text(text),
              ),

            ],
          ),
        ],
      ),

    );
  }
}
