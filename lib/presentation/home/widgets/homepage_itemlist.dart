// ignore_for_file: library_private_types_in_public_api, prefer_const_constructors

import 'package:flutter/material.dart';

import '../../../core/constant.dart';
import '../../common_widgets/prod_tile.dart';


class HorizontalItemList extends StatefulWidget {
  const HorizontalItemList({super.key});

  @override
  _HorizontalItemListState createState() => _HorizontalItemListState();
}

class _HorizontalItemListState extends State<HorizontalItemList> {
  final List<String> items = [
    'All',
    'Top Brands',
    'Best Seller',
    'New Arrivals',
    'Top Rated'
  ];
  late String selectedItemId;
  final List bottomContent = [
    {
      'name': 'HP_PRO BOOK',
      'rate': 'INR 18,000',
      'image': 'assets/images/prod1.jpg'
    },
    {
      'name': 'Load Washing Me..',
      'rate': 'INR 10,000',
      'image': 'assets/images/prod2.jpg'
    },
    {
      'name': 'LG SMART TV',
      'rate': 'INR 98,000',
      'image': 'assets/images/prod3.png'
    },
    {
      'name': 'APPLE IPHONE',
      'rate': 'INR 98,000',
      'image': 'assets/images/prod4.png'
    },
    {
      'name': 'HP_PRO BOOK',
      'rate': 'INR 18,000',
      'image': 'assets/images/prod1.jpg'
    },
  ];
  final List bottomContent1 = [5, 6, 8, 9, 10];

  @override
  void initState() {
    super.initState();
    selectedItemId = items.isNotEmpty
        ? items.first
        : ''; // Set the first item as selected by default
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 80.0,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: items.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedItemId = items[index];
                    });
                  },
                  child: Container(
                    width: 100.0,
                    margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                    decoration: BoxDecoration(
                      color: kLightGreyColor,
                      borderRadius: BorderRadius.circular(20.0),
                      border: Border.all(
                        color: selectedItemId == items[index]
                            ? kdarkBlueColor
                            : kLightGreyColor,
                        width: 2.0,
                      ),
                    ),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          items[index],
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: selectedItemId == items[index]
                                ? kdarkBlueColor
                                : Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: SizedBox(
              width: MediaQuery.of(context).size.width - 50,
              child: GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 8.0,
                  mainAxisSpacing: 8.0,
                ),
                itemCount: bottomContent.length,
                itemBuilder: (context, index) {
                  return ProductTile(
                    productData: bottomContent[index],
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
