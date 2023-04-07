// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../pages/home_screen.dart';
import '../pages/message_screen.dart';
import '../pages/schedule_screen.dart';
import '../pages/settings_screen.dart';

class NavBarRoots extends StatefulWidget {
  const NavBarRoots({super.key});

  @override
  State<NavBarRoots> createState() => _NavBarRootsState();
}

class _NavBarRootsState extends State<NavBarRoots> {
  int _selectedIndex = 0;

  final _screens = [
    // HomeScreen
    HomeScreen(),
    // Message Screen
    MessageScreen(),
    // Schedule Screen
    ScheduleScreen(),
    // Setting Screen
    SettingsScreen(),
  ];
  void _currentPage(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _screens[_selectedIndex],
      bottomNavigationBar: NavigationBar(
        backgroundColor: Colors.white,
        elevation: 1,
        height: 80,
        selectedIndex: _selectedIndex,
        onDestinationSelected: _currentPage,
        // ignore: prefer_const_literals_to_create_immutables
        destinations: [
          NavigationDestination(icon: Icon(Icons.home_filled), label: "Home"),
          NavigationDestination(
              icon: Icon(CupertinoIcons.chat_bubble_text_fill),
              label: "Messages"),
          NavigationDestination(
              icon: Icon(Icons.calendar_month), label: "Schedule"),
          NavigationDestination(icon: Icon(Icons.settings), label: "Settings"),
        ],
      ),
    );
  }
}
