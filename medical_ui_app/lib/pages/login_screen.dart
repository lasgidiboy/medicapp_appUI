// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/navbar_roots.dart';

class LoginScreen extends StatefulWidget {
  final VoidCallback showRegisterPage;
  const LoginScreen({
    super.key,
    required this.showRegisterPage,
  });

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
                  label: Text("Enter Username"),
                  prefixIcon: Icon(Icons.person)),
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
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => NavBarRoots()));
              },
              style: ElevatedButton.styleFrom(
                fixedSize: Size(400, 50),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                textStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              child: Text("Log In"),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Do You have any account?"),
                TextButton(
                    onPressed: widget.showRegisterPage,
                    child: Text(
                      "Create Account",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ))
              ],
            )
          ],
        )),
      ),
    );
  }
}
