// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  final VoidCallback showLoginPage;

  const RegisterPage({
    super.key,
    required this.showLoginPage,
  });

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool passToggle = true;

  void togglePass() {
    setState(() {
      passToggle = !passToggle;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: SafeArea(
            child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Image.asset("assets/images/doctors.png"),
            SizedBox(
              height: 30,
            ),
            TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  label: Text("Full Name"),
                  prefixIcon: Icon(Icons.person)),
            ),
            SizedBox(
              height: 15,
            ),
            TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  label: Text("Email Address"),
                  prefixIcon: Icon(Icons.mail)),
            ),
            SizedBox(
              height: 15,
            ),
            TextField(
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  label: Text("Phone Number"),
                  prefixIcon: Icon(Icons.phone)),
            ),
            SizedBox(
              height: 15,
            ),
            TextField(
              obscureText: passToggle,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  label: Text("Enter Password"),
                  prefixIcon: Icon(Icons.lock),
                  suffixIcon: InkWell(
                    onTap: togglePass,
                    child: passToggle
                        ? Icon(CupertinoIcons.eye_slash_fill)
                        : Icon(CupertinoIcons.eye_fill),
                  )),
            ),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                fixedSize: Size(400, 50),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                textStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              child: Text("Create Account"),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Already have an account?"),
                TextButton(
                    onPressed: widget.showLoginPage,
                    child: Text(
                      "Log In",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ))
              ],
            )
          ],
        )),
      ),
    );
  }
}
