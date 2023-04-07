import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../widgets/chat_sample.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: AppBar(
          backgroundColor: Theme.of(context).primaryColor,
          leadingWidth: 30,
          title: Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage("assets/images/doctor1.jpg"),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text("Dr. Doctor Name"),
                ),
              ],
            ),
          ),
          actions: [
            Padding(
              padding: EdgeInsets.only(top: 8, right: 15),
              child: InkWell(
                onTap: () {},
                child: Icon(
                  Icons.call,
                  size: 26,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 8, right: 10),
              child: InkWell(
                onTap: () {},
                child: Icon(
                  Icons.video_call,
                  size: 26,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 8, right: 10),
              child: InkWell(
                onTap: () {},
                child: Icon(
                  Icons.more_vert,
                  size: 26,
                ),
              ),
            ),
          ],
        ),
      ),
      body: ListView.builder(
        padding: EdgeInsets.only(top: 20, left: 15, right: 12, bottom: 30),
        itemCount: 6,
        itemBuilder: (context, index) => ChatSample(),
      ),
      bottomSheet: Container(
        height: 65,
        decoration: BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(color: Colors.black12, spreadRadius: 2, blurRadius: 10),
        ]),
        child: Row(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 8),
              child: Icon(
                Icons.add,
                size: 30,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 8),
              child: Icon(
                Icons.emoji_emotions,
                size: 30,
                color: Colors.amber,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10),
              child: Container(
                alignment: Alignment.centerRight,
                width: MediaQuery.of(context).size.width / 1.6,
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "Type Your Message",
                    // border: InputBorder.none,
                  ),
                ),
              ),
            ),
            Spacer(),
            Padding(
              padding: EdgeInsets.only(right: 10),
              child: InkWell(
                onTap: () {},
                child: Icon(
                  Icons.send,
                  color: Theme.of(context).primaryColor,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
