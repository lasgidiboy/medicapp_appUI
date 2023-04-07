// ignore_for_file: prefer_const_constructors, must_be_immutable

import 'package:flutter/material.dart';
import 'package:medical_ui_app/pages/appointment_screen.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({
    super.key,
  });

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List imgs = [
    "assets/images/doctor1.jpg",
    "assets/images/doctor2.jpg",
    "assets/images/doctor3.jpg",
    "assets/images/doctor4.jpg",
  ];

  final List symptoms = ["Temperature", "Snuffle", "Fever", "Cough", "Cold"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Text(
                    "Hello Papper",
                    style: TextStyle(fontSize: 35, fontWeight: FontWeight.w500),
                  ),
                  CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage("assets/images/doctor1.jpg"),
                  )
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    onTap: () {},
                    child: Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                          color: Theme.of(context).primaryColor,
                          borderRadius: BorderRadius.circular(10),
                          // ignore: prefer_const_literals_to_create_immutables
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black12,
                                blurRadius: 6,
                                spreadRadius: 4)
                          ]),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                                color: Colors.white, shape: BoxShape.circle),
                            child: Icon(
                              Icons.add,
                              size: 35,
                              color: Theme.of(context).primaryColor,
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Text(
                            "Clinic Visit",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Make an appointment",
                            style: TextStyle(color: Colors.white54),
                          )
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          // ignore: prefer_const_literals_to_create_immutables
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black12,
                                blurRadius: 6,
                                spreadRadius: 4)
                          ]),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                                color: Color(0xfff0eefa),
                                shape: BoxShape.circle),
                            child: Icon(
                              Icons.home_filled,
                              size: 35,
                              color: Theme.of(context).primaryColor,
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Text(
                            "Home Visit",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Make an appointment",
                            style: TextStyle(color: Colors.black54),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Text(
                "What ate your symptoms?",
                style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.w500,
                    color: Colors.black54),
              ),
              Container(
                height: 70,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: symptoms.length,
                    itemBuilder: (context, index) {
                      return Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 25,
                        ),
                        margin:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                        decoration: BoxDecoration(
                            color: Color(0xfff4f6fa),
                            borderRadius: BorderRadius.circular(10),
                            // ignore: prefer_const_literals_to_create_immutables
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 4,
                                  spreadRadius: 2,
                                  color: Colors.black12)
                            ]),
                        child: Center(child: Text(symptoms[index])),
                      );
                    }),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "Popular Doctors",
                style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.w500,
                    color: Colors.black54),
              ),
              GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
                  itemCount: 4,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            (MaterialPageRoute(
                                builder: (context) => AppointmentScreen(
                                      imgs: imgs,
                                      symptoms: symptoms,
                                    ))));
                      },
                      child: Container(
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12),
                            // ignore: prefer_const_literals_to_create_immutables
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black12,
                                  blurRadius: 4,
                                  spreadRadius: 2)
                            ]),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            CircleAvatar(
                              backgroundImage: AssetImage(imgs[index]),
                              radius: 35,
                            ),
                            Text(
                              "Dr.Name",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black54),
                            ),
                            Text(
                              "Therapist",
                              style: TextStyle(
                                color: Colors.black45,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                ),
                                Text(
                                  "4.9",
                                  style: TextStyle(color: Colors.black54),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    );
                  })
            ],
          ),
        ),
      )),
    );
  }
}
