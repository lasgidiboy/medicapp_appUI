// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medical_ui_app/widgets/navbar_roots.dart';

class AppointmentScreen extends StatefulWidget {
  final imgs;
  final symptoms;
  const AppointmentScreen({
    super.key,
    required this.imgs,
    required this.symptoms,
  });

  @override
  State<AppointmentScreen> createState() => _AppointmentScreenState();
}

class _AppointmentScreenState extends State<AppointmentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.only(top: 10),
          child: Column(
            children: [
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Icon(
                            Icons.arrow_back_ios_new,
                            color: Colors.white,
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: Icon(
                            Icons.more_vert,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 15),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        CircleAvatar(
                          backgroundImage:
                              AssetImage("assets/images/doctor1.jpg"),
                          radius: 35,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Dr.Doctor Name",
                          style: TextStyle(
                              fontSize: 23,
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
                        ),
                        Text(
                          "Therapist",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              padding: EdgeInsets.all(10),
                              margin: EdgeInsets.only(right: 15),
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 31, 137, 224),
                                  shape: BoxShape.circle),
                              child: Icon(
                                Icons.call,
                                size: 25,
                                color: Colors.white,
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 31, 137, 224),
                                  shape: BoxShape.circle),
                              child: Icon(
                                CupertinoIcons.chat_bubble_text_fill,
                                size: 25,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
              Container(
                height: MediaQuery.of(context).size.height / 1.7,
                width: double.infinity,
                padding: EdgeInsets.only(top: 20, left: 15),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Text(
                      "About Doctor",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Lorem ipsum, dolor sit amet consectetur adipisicing elit. Commodi quaerat sequi illo nesciunt porro asperiores ipsam, enim dolor quam praesentium possimus nostrum laborum placeat eaque laudantium facilis consequatur? Obcaecati, optio!",
                      style: TextStyle(fontSize: 16, color: Colors.black54),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Text(
                          "Reviews",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        Text(
                          "4.9",
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 16),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "(123)",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: Theme.of(context).primaryColor),
                        ),
                        Spacer(),
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              "See all",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 16),
                            ))
                      ],
                    ),
                    SizedBox(
                      height: 170,
                      child: ListView.builder(
                          itemCount: 4,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return Container(
                              margin: EdgeInsets.all(10),
                              padding: EdgeInsets.symmetric(),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                  // ignore: prefer_const_literals_to_create_immutables
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.black12,
                                        blurRadius: 4,
                                        spreadRadius: 2)
                                  ]),
                              child: SizedBox(
                                width: MediaQuery.of(context).size.width / 1.4,
                                child: Column(
                                  children: [
                                    ListTile(
                                      leading: CircleAvatar(
                                        backgroundImage:
                                            AssetImage(widget.imgs[index]),
                                      ),
                                      title: Text(
                                        "Dr. Doctor Name",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      subtitle: Text("1 day ago"),
                                      trailing: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        mainAxisSize: MainAxisSize.min,
                                        // ignore: prefer_const_literals_to_create_immutables
                                        children: [
                                          Icon(
                                            Icons.star,
                                            color: Colors.amber,
                                          ),
                                          Text(
                                            "4.9",
                                            style: TextStyle(
                                              color: Colors.black54,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 10),
                                      child: Text(
                                        "Lorem ipsum, dolor sit amet consectetur adipisicing elit. Commodi quaerat sequi illo nesciunt porro asperiores ipsam, enim dolor quam praesentium possimus nostrum laborum placeat eaque laudantium facilis consequatur? Obcaecati, optio!",
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 3,
                                        style: TextStyle(color: Colors.black),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            );
                          }),
                    ),
                    Text(
                      "Location",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                    ListTile(
                      leading: Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: Color(0xfff0eefa), shape: BoxShape.circle),
                          child: Icon(
                            Icons.location_on,
                            color: Theme.of(context).primaryColor,
                          )),
                      title: Text(
                        "New York, Medical Center",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(15),
        height: 120,
        decoration: BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(color: Colors.black12, blurRadius: 4, spreadRadius: 2)
        ]),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Consultation Price",
                  style: TextStyle(color: Colors.black54),
                ),
                Text(
                  "\$100",
                  style: TextStyle(
                      color: Colors.black54,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                "Book Appointment",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  fixedSize: Size.fromWidth(MediaQuery.of(context).size.width),
                  padding: EdgeInsets.all(15)),
            )
          ],
        ),
      ),
    );
  }
}
