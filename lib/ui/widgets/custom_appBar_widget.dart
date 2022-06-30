import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/constants/constants.dart';
import '../views/homeScreen_view/home_screen.dart';

AppBar customAppBarWidget() {
  return AppBar(
    automaticallyImplyLeading: false,
    backgroundColor: Colors.transparent,
    elevation: 0,
    bottom: PreferredSize(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          children: [
            IconButton(
              splashRadius: 1,
              onPressed: () => Get.off(const HomeScreen()),
              icon: const Icon(Icons.arrow_back_ios),
            ),
            const Spacer(),
            const Icon(
              Icons.search,
              color: Colors.black,
              size: 35,
            ),
          ],
        ),
      ),
      preferredSize: Size(width, height * 0.05),
    ),
  );
}
