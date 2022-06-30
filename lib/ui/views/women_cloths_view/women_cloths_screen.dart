import 'package:carousel_slider/carousel_slider.dart';
import 'package:clothing_app/core/utils/assets_manager.dart';
import 'package:clothing_app/ui/widgets/bottom_nav_widget.dart';
import 'package:clothing_app/ui/widgets/custom_appBar_widget.dart';
import 'package:flutter/material.dart';

import '../../../core/constants/constants.dart';
import '../../../core/utils/text_helper.dart';

class WomenClothsScreen extends StatelessWidget {
  const WomenClothsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> imgList = [
      AssetsManager.image7,
      AssetsManager.image7,
      AssetsManager.image7,
    ];

    final List<Widget> imageSliders = imgList
        .map(
          (item) => Stack(
            children: [
              Stack(
                children: [
                  Container(
                    margin: const EdgeInsets.all(5.0),
                    padding: const EdgeInsets.all(20),
                    child: Container(
                      height: height,
                      width: width,
                      alignment: Alignment.bottomLeft,
                      padding: const EdgeInsets.all(25),
                      decoration: BoxDecoration(
                        color: Colors.blue[100],
                        borderRadius: BorderRadius.circular(40),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      height: height * 0.5,
                      width: width * 0.59,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            item,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Positioned(
                bottom: height * 0.05,
                left: width * 0.13,
                child: headline3(text: 'NEW\nRELEASE'),
              ),
            ],
          ),
        )
        .toList();

    return SafeArea(
      child: Scaffold(
        appBar: customAppBarWidget(),
        body: Column(
          children: [
            const Spacer(),
            headline1(text: 'WOMEN'),
            subTitleText(text: 'Training & Gym'),
            CarouselSlider(
              items: imageSliders,
              options: CarouselOptions(
                enableInfiniteScroll: false,
                autoPlay: false,
                enlargeCenterPage: true,
                viewportFraction: 0.7,
                aspectRatio: 1.2,
                initialPage: 0,
              ),
            ),
            const Spacer(flex: 3),
          ],
        ),
        bottomNavigationBar: const BottomNavBarWidget(),
      ),
    );
  }
}
