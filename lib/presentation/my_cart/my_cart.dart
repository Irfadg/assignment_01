import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../core/constant.dart';
import '../common_widgets/icon_widget.dart';


final List bottomContent = [
  {
    'name': '70% ETHYL ALCOHOL',
    'rate': 'GAR 18.00',
    'image': 'assets/images/prod1.png'
  },
  {
    'name': '70% ETHYL ALCOHOL',
    'rate': 'GAR 18.00',
    'image': 'assets/images/prod2.png'
  },
  {
    'name': '70% ETHYL ALCOHOL',
    'rate': 'GAR 18.00',
    'image': 'assets/images/prod3.png'
  },
  {
    'name': '70% ETHYL ALCOHOL',
    'rate': 'GAR 18.00',
    'image': 'assets/images/prod4.png'
  },
  {
    'name': '70% ETHYL ALCOHOL',
    'rate': 'GAR 18.00',
    'image': 'assets/images/prod1.png'
  },
];

class MyCartScreen extends StatelessWidget {
  const MyCartScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
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
                child: SizedBox(
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 20, horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(5.0),
                          child: Text(
                            'My Cart',
                            style: TextStyle(
                                fontWeight: FontWeight.w800, fontSize: 20),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Container(
                            // height: 100.0, // Adjust the height as needed
                            decoration: BoxDecoration(
                                color: kBackgroundGreyColor,
                                borderRadius: BorderRadius.circular(15),
                                border: Border.all(color: kBackgroundGreyColor)
                                // shape: BoxShape.circle,
                                // boxShadow: [
                                //   BoxShadow(
                                //     color: kBackgroundGreyColor,
                                //     spreadRadius: 5,
                                //     blurRadius: 0,
                                //     offset: Offset(
                                //         0, 3), // changes position of shadow
                                //   ),
                                // ],
                                ),
                            child: ListTile(
                              leading: Container(
                                width: 40.0, // Adjust the size as needed
                                height: 40.0,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color:
                                        kBorderGreyColor, // Adjust the border color as needed
                                    width:
                                        1.0, // Adjust the border width as needed
                                  ),
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(
                                      25.0), // Half of the container size for a perfect circle
                                  child: Material(
                                    color: kIconBlueColor,
                                    child: const Center(
                                      child: Icon(
                                        Icons.location_on,
                                        size:
                                            25.0, // Adjust the icon size as needed
                                        color: Colors
                                            .white, // Adjust the icon color as needed
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              title: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Delivery on',
                                    style:
                                        TextStyle(color: kLightTextGreyColor),
                                  ),
                                  const Text('98 down town, Dubai, UAE')
                                ],
                              ),
                              trailing: MaterialButton(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                  // side: BorderSide(
                                  //   color:
                                  //       kManinBlueColor, // Set the border color
                                  //   width: 1.0, // Set the border width
                                  // ),
                                  borderRadius: BorderRadius.circular(
                                      10.0), // Set the border radius
                                ),
                                onPressed: () {},
                                child: Text(
                                  'Change',
                                  style: TextStyle(color: kIconBlueColor),
                                ),
                              ),
                            ),
                          ),
                        )
                        // Padding(
                        //   padding: const EdgeInsets.all(8.0),
                        //   child: IconWidget(icon: Icons.favorite_border_outlined),
                        // ),
                        // HomePageAppBar(), HomePageBanner()
                      ],
                    ),
                  ),
                ),
              ),
              // Adjust the gap between containers
              // Image(image: AssetImage(productData['image'])),
              const Gap(15),
              // Container(
              //   decoration: BoxDecoration(
              //     color: Colors.white,
              //     shape: BoxShape.circle,
              //     boxShadow: [
              //       BoxShadow(
              //         color: Colors.grey.withOpacity(0.5),
              //         spreadRadius: 2,
              //         blurRadius: 5,
              //         offset: Offset(0, 3), // changes position of shadow
              //       ),
              //     ],
              //   ),
              //   child: IconButton(
              //     onPressed: () {
              //       // Add your functionality here
              //     },
              //     icon: Icon(Icons.add),
              //     iconSize: 40,
              //     color: kManinBlueColor,
              //   ),
              // ),
              // Container with top-left and top-right borders
              Container(
                height: MediaQuery.of(context).size.height /
                    1.3, // Adjust the height as needed
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
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                  child: Column(
                    children: [
                      SizedBox(
                          width: MediaQuery.of(context).size.width,
                          child: ListView.builder(
                              physics: const NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              itemCount: bottomContent.length,
                              itemBuilder: (context1, index) {
                                return Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        InkWell(
                                          // onTap: () => Navigator.push(
                                          //     context,
                                          //     MaterialPageRoute(
                                          //       builder: (context) =>
                                          //           ProductPage(
                                          //               productId: d1[index]
                                          //                   ['product_id']),
                                          //     )),
                                          child: Container(
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                border: Border.all(
                                                    color: kBorderGreyColor)),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: SizedBox(
                                                  height: 50,
                                                  width: 50,
                                                  child: Image(
                                                      image: AssetImage(
                                                          bottomContent[index]
                                                              ['image']))),
                                            ),
                                          ),
                                        ),
                                        Column(
                                          children: [
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: SizedBox(
                                                width: width * .69,
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          bottomContent[index]
                                                              ['name'],
                                                          style: const TextStyle(
                                                            // fontFamily: kPBold,
                                                            fontSize: 15,
                                                          ),
                                                        ),
                                                        Text(
                                                          'QAR 18.00',
                                                          style: TextStyle(
                                                            color:
                                                                kIconBlueColor,
                                                            // fontFamily: kPBold,
                                                            fontSize: 15,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    const Gap(30),
                                                    const Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        IconWidgetWithBgColor(
                                                            icon: Icons.remove),
                                                        Text('  1  '),
                                                        IconWidgetWithBgColor(
                                                            icon: Icons.add)
                                                        // IconButton(
                                                        //   onPressed: () {
                                                        //     // count.value++;
                                                        //     // Add your functionality here
                                                        //   },
                                                        //   icon: Icon(Icons.add),
                                                        //   iconSize: 15,
                                                        //   color: kManinBlueColor,
                                                        // ),
                                                      ],
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ),
                                            // Gap(10),
                                            Divider(
                                              color: kBorderGreyColor,
                                            ),
                                          ],
                                        ),
                                        // Gap(15),
                                        // const Divider(),
                                      ],
                                    ),
                                  ],
                                );
                              })),
                      const Gap(100),
                      Container(
                        decoration: BoxDecoration(
                            color: kBackgroundGreyColor,
                            borderRadius: BorderRadius.circular(10)),
                        height: 60,
                        width: width / 1.2,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Total Amount',
                                  style: TextStyle(
                                      color: kLightTextGreyColor,
                                      fontSize: 15)),
                              Text(
                                '\$39.99',
                                style: TextStyle(
                                    color: kTextBlueColor, fontSize: 20),
                              ),
                            ],
                          ),
                        ),
                      ),
                      MaterialButton(
                        height: 60,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            color: kManinBlueColor, // Set the border color
                            width: 1.0, // Set the border width
                          ),
                          borderRadius: BorderRadius.circular(
                              30.0), // Set the border radius
                        ),
                        color: kManinBlueColor,
                        textColor: kMainWhite,
                        onPressed: () {},
                        child: const SizedBox(
                          height: 40,
                          // width: 100,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(),
                              Text(
                                'Checkout',
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
