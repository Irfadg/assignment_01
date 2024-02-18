import 'package:flutter/material.dart';

class ProfileSceeen extends StatelessWidget {
  const ProfileSceeen ({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text('Profile ',
      style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold
      ),)),
    );
  }
}