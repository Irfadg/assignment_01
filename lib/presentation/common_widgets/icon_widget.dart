import 'package:flutter/material.dart';

import '../../core/constant.dart';


class IconWidget extends StatelessWidget {
  final IconData icon;
  const IconWidget({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40.0, // Adjust the size as needed
      height: 40.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: kBorderGreyColor, // Adjust the border color as needed
          width: 1.0, // Adjust the border width as needed
        ),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(
            25.0), // Half of the container size for a perfect circle
        child: Material(
          color: Colors.transparent,
          child: Center(
            child: Icon(
              icon,
              size: 25.0, // Adjust the icon size as needed
              color: kIconBlueColor, // Adjust the icon color as needed
            ),
          ),
        ),
      ),
    );
  }
}

class IconWidgetWithBgColor extends StatelessWidget {
  final IconData icon;
  const IconWidgetWithBgColor({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 25.0, // Adjust the size as needed
      height: 25.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: kBackgroundGreyColor, // Adjust the border color as needed
          width: 1.0, // Adjust the border width as needed
        ),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(
            25.0), // Half of the container size for a perfect circle
        child: Material(
          color: kBackgroundGreyColor,
          child: Center(
            child: Icon(
              icon,
              size: 20.0, // Adjust the icon size as needed
              color: kIconBlueColor, // Adjust the icon color as needed
            ),
          ),
        ),
      ),
    );
  }
}
