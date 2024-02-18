import 'package:flutter/material.dart';

import '../../../core/constant.dart';
import '../../common_widgets/icon_widget.dart';



class HomePageAppBar extends StatelessWidget {
  const HomePageAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, bottom: 20, left: 20, right: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const IconWidget(
            icon: Icons.search,
          ),
         const Text('ElectraHub',
        style: TextStyle(fontSize: 17,
        fontWeight: FontWeight.bold),),
          //cart
          Stack(
            alignment: Alignment.topRight,
            children: [
              InkWell(
                  onTap: () {
                  
                  },
                  child: const IconWidget(icon: Icons.shopping_cart_outlined)),
              Positioned(
                top: -5.0,
                // right: -2,
                child: Container(
                  padding: const EdgeInsets.all(2.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color:
                        kManinBlueColor, // Background color for the item count
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(2.0),
                    child: Text(
                      '5', // Replace with your actual item count
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12.0, // Adjust the font size as needed
                      ),
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
