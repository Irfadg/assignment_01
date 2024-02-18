import 'package:flutter/material.dart';


import '../../../core/constant.dart';
import '../widgets/homepage_appbar.dart';
import '../widgets/homepage_banner.dart';
import '../widgets/homepage_itemlist.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundGreyColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Container with bottom-left and bottom-right curved corners
            Container(
              // height: 100.0, // Adjust the height as needed
              decoration: const BoxDecoration(
                color: Colors.white, // Adjust the color as needed
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20.0),
                  bottomRight: Radius.circular(20.0),
                ),
              ),
              child: const Padding(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: Column(children: [HomePageAppBar(), HomePageBanner()]),
              ),
            ),
            const SizedBox(
              height: 20.0,
              // color: kBackgroundGreyColor,
            ), // Adjust the gap between containers
            // Container with top-left and top-right borders
            Container(
                // height: 100.0, // Adjust the height as needed
                decoration: const BoxDecoration(
                  color: Colors.white, // Adjust the color as needed
                  // border: Border(
                  //   top: BorderSide(
                  //     color:
                  //         Colors.black, // Adjust the top border color as needed
                  //     width: 2.0, // Adjust the top border width as needed
                  //   ),
                  // ),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(20.0),
                  ),
                ),
                child: const HorizontalItemList()),
          ],
        ),
      ),
    );
  }
}
