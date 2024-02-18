// ignore_for_file: prefer_typing_uninitialized_variables, prefer_const_constructors

import 'package:flutter/material.dart';

import '../../core/constant.dart';
import '../product_detail.dart/screens/prod_detail_page.dart';


class ProductTile extends StatelessWidget {
  final productData;
  const ProductTile({super.key, this.productData});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (ctx) => ProductDetailPage(
                      productData: productData,
                    )));
      },
      child: Container(
        width: 30,
        height: 50,
        decoration: BoxDecoration(
          color: kLightGreyColor,
          borderRadius: BorderRadius.circular(20.0),
          border: Border.all(
            color: kLightGreyColor,
            width: 1.0,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0),
                ),
              ),
              height: 90,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image(
                  image: AssetImage(productData['image']),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    productData['name'].toString(),
                    style: TextStyle(fontSize: 14.0),
                  ),
                  Text(
                     productData['rate'].toString(),
                    style: TextStyle(
                      fontSize: 12.0,
                      color: kTextBlueColor,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
