import 'package:flutter/material.dart';
import 'package:mentoroverflow/models/message.dart';

class ChatMessage extends StatelessWidget {
  final Message message;
  //for opotional params we use curly braces
  ChatMessage(this.message);
  @override
  Widget build(BuildContext context) {
    double c_width = MediaQuery.of(context).size.width*0.8;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(right: 16.0),
            child: CircleAvatar(
              backgroundImage: message.senderImage != null ? NetworkImage(message.senderImage) : null,
              child: message.senderImage != null ? null : Text(message.senderName != null ? message.senderName[0] : "{this}"),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(message.senderName ?? "You", style: Theme.of(context).textTheme.subhead),
              Container(
                width: c_width,
                margin: const EdgeInsets.only(top: 5.0),
                child: Container(child: Text(message.message)),
              )
            ],
          )
        ],
      ),
    );
  }
}
