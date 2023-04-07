import 'package:flutter/material.dart';

import 'chat_screen.dart';

class MessageScreen extends StatelessWidget {
  MessageScreen({super.key});
  final List imgs = [
    "assets/images/doctor1.jpg",
    "assets/images/doctor2.jpg",
    "assets/images/doctor3.jpg",
    "assets/images/doctor4.jpg",
    "assets/images/doctor1.jpg",
    "assets/images/doctor2.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                "Messages",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 15),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black12,
                          blurRadius: 10,
                          spreadRadius: 2)
                    ]),
                child: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Search",
                      suffixIcon: Icon(
                        Icons.search,
                        color: Colors.black54,
                      )),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Text("Active Now",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            ),
            SizedBox(
              height: 90,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 6,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.symmetric(horizontal: 15),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black12,
                                blurRadius: 10,
                                spreadRadius: 2)
                          ]),
                      child: Stack(
                        textDirection: TextDirection.rtl,
                        children: [
                          Center(
                            child: Container(
                                height: 65,
                                width: 65,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(30),
                                  child: Image.asset(
                                    imgs[index],
                                    fit: BoxFit.cover,
                                  ),
                                )),
                          ),
                          Container(
                            margin: EdgeInsets.all(2),
                            padding: EdgeInsets.all(3),
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(
                                color: Colors.white, shape: BoxShape.circle),
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.green, shape: BoxShape.circle),
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Text("Recent Chat",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            ),
            SizedBox(
              height: 10,
            ),
            ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              itemCount: 6,
              shrinkWrap: true,
              itemBuilder: ((context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: ListTile(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ChatScreen()));
                    },
                    leading: CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage(imgs[index]),
                    ),
                    title: Text(
                      "Dr. Doctor Name",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    subtitle: Text(
                      "Hello Doctor Are there?",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(fontSize: 16, color: Colors.black54),
                    ),
                    trailing: Text(
                      "12:30",
                      style: TextStyle(fontSize: 15, color: Colors.black54),
                    ),
                  ),
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}
