// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:Assignment_01/presentation/category/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../core/constant.dart';


class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List items = [
    {
      'name': 'Iphone 15 pro max',
      'rate': 'INR 18,000',
      'image': 'assets/images/prod1.jpg'
    },
    {
      'name': 'Iphone xes pro',
      'rate': 'INR 10,000',
      'image': 'assets/images/prod2.jpg'
    },
    {
      'name': 'Redmi pro xe 13',
      'rate': 'INR 98,000',
      'image': 'assets/images/prod3.png'
    },
    {
      'name': 'Poco xe max',
      'rate': 'INR 98,000',
      'image': 'assets/images/prod4.png'
    },
    {
      'name': 'Iphone 14 pro max',
      'rate': 'INR 18,000',
      'image': 'assets/images/prod1.jpg'
    },
  ];
    return SafeArea(
      child: Scaffold(
        backgroundColor: kBackgroundGreyColor,
        body: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * .23,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: kWhiteColor,
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Gap(50),
                  const Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Text(
                      'Categories',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                  ),
                  const Gap(10),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: TextField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(
                            vertical: 12.0, horizontal: 16.0),
                        hintText: 'Search Item',
                        prefixIcon: Icon(Icons.search),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Gap(10),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: kWhiteColor,
                  borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(40),
                      topLeft: Radius.circular(40)),
                ),
                child:GridView.count(
      crossAxisCount: 2,
      crossAxisSpacing: 16.0, // Set the desired space between columns
      mainAxisSpacing: 16.0, // Set the desired space between rows
      padding: EdgeInsets.all(16.0),
      
      
      children: List.generate(
        items.length,
        (index) => ContainerWithImageAndName(
          imagePath: items[index]['image'],
          name: items[index]['name'],
        ),
      ),
    )
              ),
            )
          ],
        ),
      ),
    );
  }
}




