import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../core/constant.dart';
import '../product_detail.dart/screens/prod_detail_page.dart';

class SubCategories extends StatelessWidget {
  const SubCategories({super.key});

  @override
  Widget build(BuildContext context) {
    final List bottomContent = [
    {
      'name': 'HP_PRO BOOK',
      'rate': 'INR 18,000',
      'image': 'assets/images/img1.jpg'
    },
    {
      'name': 'Load Washing Me..',
      'rate': 'INR 10,000',
      'image': 'assets/images/img2.jpg'
    },
    {
      'name': 'LG SMART TV',
      'rate': 'INR 98,000',
      'image': 'assets/images/img3.png'
    },
    {
      'name': 'APPLE IPHONE',
      'rate': 'INR 98,000',
      'image': 'assets/images/img4.png'
    },
    {
      'name': 'HP_PRO BOOK',
      'rate': 'INR 18,000',
      'image': 'assets/images/img1.jpg'
    },
  ];

    return SafeArea(
        child: Scaffold(
            backgroundColor: kBackgroundGreyColor,
            body: Column(children: [
              Container(
                height: MediaQuery.of(context).size.height * .2,
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
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Row(
                        children: [
                          IconButton(
                            icon: const Icon(Icons.arrow_back),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                          const Gap(50),
                          const Text(
                            'MOBILE',
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                    const Center(
                      child: Text(
                        '25 ITEM',
                        style: TextStyle(
                            fontSize: 13, fontWeight: FontWeight.w500),
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
                child: ListView(
                  children: [
                    const Gap(20),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width - 50,
                        child: GridView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 8.0,
                            mainAxisSpacing: 8.0,
                          ),
                          itemCount: bottomContent.length,
                          itemBuilder: (context, index) {
                            return InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                           ProductDetailPage(productData:  bottomContent[index],)),
                                );
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
                                      decoration: const BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(20.0),
                                          topRight: Radius.circular(20.0),
                                        ),
                                      ),
                                      height: 100,
                                      width: double.infinity,
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Image(
                                          image: AssetImage(
                                              bottomContent[index]['image']),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            bottomContent[index]['name']
                                                .toString(),
                                            style: const TextStyle(fontSize: 14.0),
                                          ),
                                          Text(
                                            'GAR 18.00',
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
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ))
            ])));
  }
}
