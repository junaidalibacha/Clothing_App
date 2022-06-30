import 'package:clothing_app/ui/views/homeScreen_view/home_screen.dart';
import 'package:clothing_app/ui/views/women_bestSellers_view/women_best_sellers_screen.dart';
import 'package:clothing_app/ui/views/women_cloths_view/women_cloths_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/constants/constants.dart';

class BottomNavBarWidget extends StatelessWidget {
  const BottomNavBarWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.transparent,
      elevation: 0,
      child: SizedBox(
        height: height * 0.1,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              onPressed: () {
                Get.to(
                  const HomeScreen(),
                );
              },
              icon: const Icon(Icons.home_outlined, color: Colors.black),
            ),
            IconButton(
              onPressed: () {
                Get.to(
                  const WomenBestSellersScreen(),
                );
              },
              icon: const Icon(Icons.add_shopping_cart_rounded,
                  color: Colors.black),
            ),
            IconButton(
              onPressed: () {
                Get.to(
                  const WomenClothsScreen(),
                );
              },
              icon: const Icon(Icons.favorite_outline_rounded,
                  color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}
