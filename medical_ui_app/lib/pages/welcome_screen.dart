// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:medical_ui_app/auth/auth.dart';
import 'package:medical_ui_app/widgets/navbar_roots.dart';
import 'package:medical_ui_app/pages/home_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => NavBarRoots()));
                      },
                      child: Text(
                        "Skip",
                        style: TextStyle(fontSize: 20),
                      ))
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: Image.asset("assets/images/doctors.png"),
              ),
              SizedBox(
                height: 40,
              ),
              Text(
                "Doctors Appointment",
                style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 1,
                    wordSpacing: 2,
                    color: Theme.of(context).primaryColor),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Appoint Your Doctor",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1,
                    wordSpacing: 2,
                    color: Colors.black54),
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () => Navigator.push(context,
                        MaterialPageRoute(builder: (context) => AuthPage())),
                    style: ElevatedButton.styleFrom(
                      padding:
                          EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      textStyle:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                    ),
                    child: Text("GET STARTED"),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
