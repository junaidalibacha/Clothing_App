import 'package:clothing_app/core/utils/text_helper.dart';
import 'package:clothing_app/ui/views/women_bestSellers_view/bestSeller_model.dart';
import 'package:clothing_app/ui/widgets/custom_appBar_widget.dart';
import 'package:flutter/material.dart';

import '../../../core/constants/constants.dart';

class WomenBestSellersScreen extends StatelessWidget {
  const WomenBestSellersScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Color> _colorList = [
      Colors.green.withOpacity(0.5),
      Colors.blue.withOpacity(0.5),
      Colors.yellow.withOpacity(0.5),
      Colors.orange.withOpacity(0.5),
      Colors.brown.withOpacity(0.5),
      Colors.indigo.withOpacity(0.5),
      Colors.cyan.withOpacity(0.5),
      Colors.teal.withOpacity(0.5),
      Colors.lime.withOpacity(0.5),
      Colors.lightGreen.withOpacity(0.5),
      Colors.lightBlue.withOpacity(0.5),
      Colors.grey.withOpacity(0.5),
    ];
    List<String> _filterList = [
      'Gender',
      'Brand',
      'Color',
      'Size',
      'Price',
      'Date',
    ];
    return SafeArea(
      child: Scaffold(
        appBar: customAppBarWidget(),
        body: Container(
          height: height * 0.85,
          width: width,
          decoration: const BoxDecoration(
            // color: Colors.black,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(40),
              bottomRight: Radius.circular(40),
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                headline2(
                  text: 'WOMEN\nBEST\nSELLERS',
                  textAlign: TextAlign.center,
                ),
                GridView.builder(
                  itemCount: sellersList.length,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  padding: EdgeInsets.symmetric(
                      horizontal: width * 0.05, vertical: height * 0.09),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 0.5,
                    crossAxisSpacing: width * 0.04,
                    // mainAxisSpacing: 10,
                  ),
                  itemBuilder: (context, index) => Padding(
                    padding: EdgeInsets.only(
                      top: index.isOdd ? height * 0.04 : 0,
                      bottom: index.isEven ? height * 0.04 : 0,
                    ),
                    child: _buildProductCard(_colorList, index),
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: _buildBottomNavBar(_filterList, _colorList),
      ),
    );
  }

  Column _buildProductCard(List<Color> _colorList, int index) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            Card(
              elevation: 0,
              margin: EdgeInsets.zero,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(30),
                ),
              ),
              color: _colorList[index],
              child: Image.asset(
                sellersList[index].image,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: CircleAvatar(
                radius: 12,
                backgroundColor: Colors.black,
                child: Icon(
                  Icons.favorite_border_rounded,
                  color: _colorList[index],
                  size: 16,
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: height * 0.01,
        ),
        Padding(
          padding: EdgeInsets.only(left: width * 0.03),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              titleText(text: sellersList[index].title),
              subTitleText(
                text: sellersList[index].subTitle,
                color: Colors.grey.withOpacity(0.6),
              ),
              titleText(
                text: '\$${sellersList[index].price}',
                color: _colorList[index],
              ),
            ],
          ),
        ),
      ],
    );
  }

  BottomAppBar _buildBottomNavBar(
      List<String> _filterList, List<Color> _colorList) {
    return BottomAppBar(
      color: Colors.white54,
      elevation: 0,
      child: SizedBox(
        height: height * 0.1,
        width: width,
        child: Row(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.05),
              child: const Icon(Icons.filter_alt_outlined),
            ),
            Expanded(
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: List.generate(
                  _filterList.length,
                  (index) => Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: height * 0.03, horizontal: width * 0.02),
                    child: Container(
                      width: width * 0.2,
                      height: height * 0.05,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: _colorList[index],
                      ),
                      child: Text(
                        _filterList[index],
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
