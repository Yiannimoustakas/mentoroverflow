import 'package:flutter/material.dart';
import 'package:mentoroverflow/widgets/chat_screen/chat_screen.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Chat App"),
      ),
      body: ChatScreen()
    );
  }
}