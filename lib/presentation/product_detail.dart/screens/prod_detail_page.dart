// ignore_for_file: prefer_typing_uninitialized_variables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../core/constant.dart';
import '../../common_widgets/icon_widget.dart';



class ProductDetailPage extends StatelessWidget {
  final productData;
  const ProductDetailPage({Key? key, required this.productData})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    ValueNotifier<int> count = ValueNotifier(0);
    return Scaffold(
      backgroundColor: kBackgroundGreyColor,
      body: SafeArea(
        child: SingleChildScrollView(
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
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: InkWell(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: const IconWidget(
                                  icon: Icons.arrow_back_ios_outlined)),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: IconWidget(icon: Icons.favorite_border_outlined),
                      ),
                      // HomePageAppBar(), HomePageBanner()
                    ],
                  ),
                ),
              ),
              const Stack(
                children: [
                  Column(
                    children: [
                      SizedBox(
                        height: 20.0,
                        // color: kBackgroundGreyColor,
                      ),
                    ],
                  ),
                ],
              ), // Adjust the gap between containers
              Image(image: AssetImage(productData['image'])),
              const Gap(20),

              // Container with top-left and top-right borders
              Stack(
                children: [
                  Column(
                    children: [
                      Container(
                        height: 25,
                        color: kBackgroundGreyColor,
                      ),
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
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 40, horizontal: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    // height: 100.0, // Adjust the height as needed
                                    decoration: BoxDecoration(
                                      color:
                                          kBackgroundGreyColor, // Adjust the color as needed
                                      // border: Border(
                                      //   top: BorderSide(
                                      //     color:
                                      //         Colors.black, // Adjust the top border color as needed
                                      //     width: 2.0, // Adjust the top border width as needed
                                      //   ),
                                      // ),
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(5.0),
                                      child: Text(
                                        'In Stock',
                                        style: TextStyle(color: kTextBlueColor),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const Gap(10),
                              Text(
                                productData['name'],
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                              Row(
                                children: [
                                  Text(
                                    '\$239.00 ',
                                    style: TextStyle(
                                      color: kTextBlueColor,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                    ),
                                  ),
                                  Text(
                                    '\$499 ',
                                    style: TextStyle(
                                      decoration: TextDecoration.lineThrough,
                                      color: kLightTextGreyColor,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                    ),
                                  ),
                                  Text(
                                    '35% OFF',
                                    style: TextStyle(
                                      color: kTextBlueColor,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                    ),
                                  ),
                                ],
                              ),
                              const Gap(10),
                              Text('PRODUCT DETAILS'),
                              Gap(10),
                              Text(
                                'Stay productive and improve your performance with the Super Retina XDR display that is comfortable for the eyes. Powered with a 12 MP main camera, enjoy taking pictures with friends and family. With a built-in rechargeable lithium-ion battery and equipped with the MagSafe wireless charging, ',
                              ),
                              Gap(10),
                              MaterialButton(
                                height: 60,
                                shape: RoundedRectangleBorder(
                                  side: BorderSide(
                                    color:
                                        kManinBlueColor, // Set the border color
                                    width: 1.0, // Set the border width
                                  ),
                                  borderRadius: BorderRadius.circular(
                                      30.0), // Set the border radius
                                ),
                                color: kManinBlueColor,
                                textColor: kMainWhite,
                                onPressed: () {
                               
                                },
                                child: const SizedBox(
                                  height: 40,
                                  // width: 100,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      SizedBox(),
                                      Text(
                                        'BOOK NOW',
                                        style: TextStyle(fontSize: 15),
                                      ),
                                      Icon(Icons.arrow_right_alt),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Positioned(
                    top: 0,
                    left: MediaQuery.of(context).size.width / 3,
                    right: MediaQuery.of(context).size.width / 3,
                    child: Container(
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        // shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ValueListenableBuilder(
                            valueListenable: count,
                            builder: (context, newVal, _) {
                              return Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  InkWell(
                                      onTap: () {
                                        if (count.value > 0) {
                                          count.value--;
                                        }
                                      },
                                      child: IconWidgetWithBgColor(
                                          icon: Icons.remove)),
                                  Text(newVal.toString()),
                                  InkWell(
                                      onTap: () {
                                        count.value++;
                                        // Add your functionality here
                                      },
                                      child: IconWidgetWithBgColor(
                                          icon: Icons.add))
                                ],
                              );
                            }),
                      ),
                    ),
                  ),
                ],
              ),
              // Positioned(
              //   // top: -30,
              //   left: MediaQuery.of(context).size.width * 0.5 -
              //       20, // Adjusted the position based on the icon size
              //   child: Container(
              //     decoration: BoxDecoration(
              //       color: Colors.white,
              //       shape: BoxShape.circle,
              //       boxShadow: [
              //         BoxShadow(
              //           color: Colors.grey.withOpacity(0.5),
              //           spreadRadius: 2,
              //           blurRadius: 5,
              //           offset: Offset(0, 3), // changes position of shadow
              //         ),
              //       ],
              //     ),
              //     child: IconButton(
              //       onPressed: () {
              //         // Add your functionality here
              //       },
              //       icon: Icon(Icons.add),
              //       iconSize: 40,
              //       color: kManinBlueColor,
              //     ),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
