
import 'package:Assignment_01/core/constant.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';

import '../app_initial_screen/bottom_navbar.dart';



class SpalshScreen extends StatelessWidget {
  const SpalshScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
        
        duration: 3000,
        splash: const Center(
          child: Text('ElectraHub',
              style: TextStyle(fontSize: 22,
              fontWeight: FontWeight.bold),),
        ),
        nextScreen: const AppInitalScreen(),
        // nextScreen: FavoritesPage(),
        splashTransition: SplashTransition.fadeTransition,
        backgroundColor: kBackgroundGreyColor);
  }
}
