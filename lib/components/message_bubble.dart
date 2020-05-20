import 'package:flutter/material.dart';

class MessageBubble extends StatelessWidget {
  String sender;
  String text;
  bool isCurrentUser;

  MessageBubble(
      {@required this.text,
      @required this.sender,
      @required this.isCurrentUser});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment:
            isCurrentUser ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            sender,
            style: TextStyle(
              fontSize: 12.0,
              color: Colors.black54,
            ),
          ),
          Material(
            borderRadius: BorderRadius.only(
                topLeft: isCurrentUser ? Radius.circular(30.0) : Radius.zero,
                bottomLeft: Radius.circular(30.0),
                bottomRight: Radius.circular(30.0),
                topRight: isCurrentUser ? Radius.zero : Radius.circular(30.0)),
            elevation: 5.0,
            color: isCurrentUser ? Colors.lightBlueAccent : Colors.white,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
              child: Text(
                text,
                style: TextStyle(
                  fontSize: 15.0,
                  color: isCurrentUser ? Colors.white : Colors.black54,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
