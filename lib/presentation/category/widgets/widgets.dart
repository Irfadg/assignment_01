
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../sub_categories/sub_categories.dart';

class ContainerWithImageAndName extends StatelessWidget {
  final String imagePath;
  final String name;

  const ContainerWithImageAndName({
    required this.imagePath,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        print('inkwell');
        Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const SubCategories()),
  );
      },
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.blue, // Set the desired color for the border
            width: 1.0, // Set the desired width for the border
          ),
          borderRadius: BorderRadius.circular(15.0), // Set the desired border radius
        ),
        child: Column(
          children: [
            Gap(20),
            Image.asset(
              imagePath,
              height: 100.0,
              width: 80.0,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 8.0),
            Text(
              name,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}