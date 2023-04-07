import 'package:flutter/material.dart';
import 'package:custom_clippers/custom_clippers.dart';

class ChatSample extends StatelessWidget {
  const ChatSample({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(right: 80),
          child: ClipPath(
            clipper: UpperNipMessageClipper(MessageType.receive),
            child: Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Color(0xffe1e1e2),
              ),
              child: Text(
                "Hello, what can i do for you, you can book appointment directly",
                style: TextStyle(fontSize: 16),
              ),
            ),
          ),
        ),
        Container(
          alignment: Alignment.centerRight,
          child: Padding(
            padding: EdgeInsets.only(top: 15, left: 80, bottom: 15),
            child: ClipPath(
              clipper: UpperNipMessageClipper(MessageType.send),
              child: Container(
                padding:
                    EdgeInsets.only(left: 20, top: 20, bottom: 20, right: 20),
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                ),
                child: Text(
                  "Hello Doctor, Are You there?",
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
