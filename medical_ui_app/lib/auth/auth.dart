import 'package:flutter/material.dart';
import 'package:medical_ui_app/pages/login_screen.dart';

import '../pages/register_screen.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  // initially, show the login page
  bool showLoginPage = true;
  void toggleScreens() {
    setState(() {
      showLoginPage = !showLoginPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showLoginPage) {
      return LoginScreen(
        showRegisterPage: toggleScreens,
      );
    } else {
      return RegisterPage(
        showLoginPage: toggleScreens,
      );
    }
  }
}
