// ignore_for_file: prefer_const_constructors

import 'package:Assignment_01/presentation/profile/profilescreen.dart';
import 'package:flutter/material.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';

import '../category/category.dart';
import '../home/screens/home_screen.dart';

class AppInitalScreen extends StatefulWidget {
  const AppInitalScreen({
    super.key,
  });

  @override
  State<AppInitalScreen> createState() => _AppInitalScreenState();
}

class _AppInitalScreenState extends State<AppInitalScreen> {
  int _currentIndex = 0;
  List pages = const [HomeScreen(), CategoryScreen(), ProfileSceeen()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: pages[_currentIndex],
        bottomNavigationBar: BottomNavyBar(
          selectedIndex: _currentIndex,
          showElevation: true,
          itemCornerRadius: 24,
          curve: Curves.easeIn,
          onItemSelected: (index) => setState(() => _currentIndex = index),
          items: <BottomNavyBarItem>[
            BottomNavyBarItem(
              icon: Icon(Icons.home),
              title: Text('Home'),
              activeColor: Colors.blue.shade900,
              inactiveColor: Colors.grey,
              textAlign: TextAlign.center,
            ),
            BottomNavyBarItem(
              icon: Icon(Icons.apps),
              title: Text('Category'),
              activeColor: Colors.blue.shade900,
              inactiveColor: Colors.grey,
              textAlign: TextAlign.center,
            ),
            BottomNavyBarItem(
              icon: Icon(Icons.person),
              title: Text('Profile'),
              activeColor: Colors.blue.shade900,
              inactiveColor: Colors.grey,
              textAlign: TextAlign.center,
            ),
          ],
        ));
  }
}
