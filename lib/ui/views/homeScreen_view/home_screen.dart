import 'package:clothing_app/core/utils/assets_manager.dart';
import 'package:clothing_app/core/constants/constants.dart';
import 'package:clothing_app/ui/views/women_bestSellers_view/women_best_sellers_screen.dart';
import 'package:clothing_app/ui/views/women_cloths_view/women_cloths_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/utils/text_helper.dart';
import '../../widgets/bottom_nav_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: _buildAppBar(),
        body: Container(
          height: height * 0.85,
          width: width,
          decoration: const BoxDecoration(
            color: Color(0xFFB0B9BD),
            image: DecorationImage(
              image: AssetImage(AssetsManager.homeScreenImage),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(40),
              bottomRight: Radius.circular(40),
            ),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.05),
            child: Column(
              children: <Widget>[
                const Spacer(flex: 2),
                _buildTextButton(
                    onTap: () {
                      Get.to(const WomenClothsScreen());
                    },
                    text: 'MEN'),
                _buildTextButton(
                    onTap: () {
                      Get.to(const WomenBestSellersScreen());
                    },
                    text: 'WOMEN'),
                _buildTextButton(onTap: () {}, text: 'KIDS'),
                const Spacer(),
              ],
            ),
          ),
        ),
        bottomNavigationBar: const BottomNavBarWidget(),
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: Colors.transparent,
      elevation: 0,
      bottom: PreferredSize(
        child: Align(
          alignment: Alignment.centerRight,
          child: Padding(
            padding: EdgeInsets.only(right: width * 0.05),
            child: const Icon(
              Icons.search,
              color: Colors.black,
              size: 35,
            ),
          ),
        ),
        preferredSize: Size(width, height * 0.05),
      ),
    );
  }

  TextButton _buildTextButton({
    required VoidCallback onTap,
    required String text,
  }) {
    return TextButton(
      onPressed: onTap,
      child: headline1(text: text),
    );
  }
}
