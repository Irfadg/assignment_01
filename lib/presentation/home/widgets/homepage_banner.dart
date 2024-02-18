import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../../core/constant.dart';


class HomePageBanner extends StatefulWidget {
  // final dynamic appMainBanner;
  const HomePageBanner({
    Key? key,
    // required this.appMainBanner
  }) : super(key: key);

  @override
  State<HomePageBanner> createState() => _HomePageBannerState();
}

class _HomePageBannerState extends State<HomePageBanner> {
  int _current = 0;
  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    List imgList = [
      {'name': 'assets/images/homeBanner.png'},
      {'name': 'assets/images/homeBanner.png'},
      {'name': 'assets/images/homeBanner.png'},
      {'name': 'assets/images/homeBanner.png'},
    ];
    final List<Widget> imageSliders = imgList
        .map(
          (item) => Container(
            margin: const EdgeInsets.all(5.0),
            child: GestureDetector(
              onTap: () {
                // item['label'] != '' && item['product_tag_id'] != ''
                //     ? Navigator.push(
                //         context,
                //         MaterialPageRoute(
                //           builder: (context) => BannerProducts(
                //               label: item['label'],
                //               subTag: item['product_tag_id']),
                //         ))
                //     : null;
              },
              child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(15.0)),
                child: Image(
                  image: AssetImage(item['name'].toString()),
                ),
              ),
            ),
          ),
        )
        .toList();

    return Stack(
      // mainAxisAlignment: MainAxisAlignment.center,
      // crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CarouselSlider(
          items: imageSliders,
          carouselController: _controller,
          options: CarouselOptions(
              viewportFraction: 1,
              autoPlay: true,
              enlargeCenterPage: true,
              aspectRatio: 2,
              onPageChanged: (index, reason) {
                setState(() {
                  _current = index;
                });
              }),
        ),
        Positioned(
          top: 160,
          left: width / 2 - 30,
          right: width / 2 - 30,
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: imgList.asMap().entries.map((entry) {
                return GestureDetector(
                  onTap: () => _controller.animateToPage(entry.key),
                  child: Container(
                    height: 6.0,
                    width: 6,
                    margin: const EdgeInsets.symmetric(
                        vertical: 4.0, horizontal: 4.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: (Theme.of(context).brightness == Brightness.dark
                                ? Colors.white
                                : kManinBlueColor)
                            .withOpacity(_current == entry.key ? 0.9 : 0.4)),
                  ),
                );
              }).toList(),
            ),
          ),
        ),
      ],
    );
  }
}
