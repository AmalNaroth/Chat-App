import 'package:flutter/material.dart';
import 'package:materialchatapp/chatmessage.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {

  TextEditingController _textController=TextEditingController();

  List<ChatMessage> _messages = <ChatMessage> [];

  void _handleSubmit(String value) {
    ChatMessage message= ChatMessage(chatText: value);
    setState(() {
      _messages.insert(0, message);
    });
    _textController.clear();
  }

  Widget _textComposerWidget(){
    return IconTheme(
      data: const IconThemeData(
        color: Colors.green
      ),
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 8),
        child: Row(
          children: [
            Flexible(
              child: TextFormField(
                decoration: const InputDecoration.collapsed(hintText: "Send a message"),
                controller: _textController,
                onFieldSubmitted: _handleSubmit,
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 4),
              child: IconButton(onPressed: () {
                _handleSubmit(_textController.text);
              }, icon:const Icon(Icons.send)),
            )
          ],
        ),
    
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return  Column(children: <Widget> [
        Flexible(child: ListView.builder(
          padding: EdgeInsets.all(8),
          reverse: true,
          itemCount: _messages.length,
          itemBuilder: (context, index) {
          return _messages[index];
        },),
       ),
        Divider(height: 1,),
        Container(
          child: _textComposerWidget() ,
        )
      ],
      );

   
  }
}