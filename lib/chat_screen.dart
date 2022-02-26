import 'package:chat_app/chat_message.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget{
  @override
  State createState()=> ChatScreenState();

}
class ChatScreenState extends State<ChatScreen>{

  final TextEditingController _textEditor= TextEditingController();

  final List<ChatMessage> _messages = <ChatMessage>[];

  void _haldleSubmitted(String text){
    _textEditor.clear();
    ChatMessage message = ChatMessage(text: text);
    setState(() {
      _messages.insert(0, message);
    });
  }

  Widget _textComposer(){
    return IconTheme(
      data: IconThemeData(
        color: Colors.white,
      ),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(width: 0.2,color: Colors.grey),
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              color: Colors.black38,
              offset: Offset(5,5),
                blurRadius: 10.0,
                spreadRadius: 2.0,
            ),
            BoxShadow(
              color: Colors.white,
              offset: const Offset(0.0, 0.0),
              blurRadius: 0.0,
              spreadRadius: 0.0,
            ),
          ],
        ),
        margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
        padding: EdgeInsets.all(10),

        child:Row(
          
            children: [
              Flexible(  child: TextField(
                decoration: InputDecoration.collapsed(hintText: 'Type A Message',

                ),
                controller: _textEditor,
                onSubmitted: _haldleSubmitted,
              ),
              ),
              Container(

                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.blue,
                ),
                child: IconButton(
                  icon: Icon(Icons.send),
                  onPressed: () => _haldleSubmitted(_textEditor.text),
                ),
              ),
            ],
        )
      ),
    );
  }

  @override
  Widget build(BuildContext context){
    return Column(
      children: <Widget>[
        Flexible(child: ListView.builder(
          padding: EdgeInsets.all(10),
          itemBuilder: (_,int index)=>_messages[index] ,
          reverse: true,
          itemCount: _messages.length,
        )),
        Divider(height: 1.0,),
        Container(
          decoration: BoxDecoration(
            color: Theme.of(context).cardColor,
          ),
          child: _textComposer() ,
        ),
      ],
    );
  }
}