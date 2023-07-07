import 'package:flutter/material.dart';

class ChatMessage extends StatelessWidget {
   ChatMessage({super.key, required this.chatText});
  String chatText;
  String _text="Maneesh";

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Row(children: <Widget> [
        Container(
          margin: EdgeInsets.only(right: 16),
          child: CircleAvatar(
            child: Text(_text[0]),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(_text ,style: Theme.of(context).textTheme.subtitle1,),
            Container(
              margin: EdgeInsets.only(top: 5),
              child: Text(chatText),
            )
        ],)
      ]),
    );
  }
}