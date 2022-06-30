// ignore: file_names
import '../../../core/utils/assets_manager.dart';

class BestSellersModel {
  BestSellersModel({
    required this.image,
    required this.title,
    required this.subTitle,
    required this.price,
  });
  final String image;
  final String title;
  final String subTitle;
  final double price;
}

List<BestSellersModel> sellersList = [
  BestSellersModel(
    image: AssetsManager.image7,
    title: 'INFINALON\nCROP TOP',
    subTitle: 'Nike Yoga Luxe',
    price: 50,
  ),
  BestSellersModel(
    image: AssetsManager.image7,
    title: 'SHELF-BRA\nCROPPED',
    subTitle: 'Nike Pro Dri-Fit',
    price: 35.97,
  ),
  BestSellersModel(
    image: AssetsManager.image7,
    title: 'New Release',
    subTitle: 'New Release',
    price: 43.55,
  ),
  BestSellersModel(
    image: AssetsManager.image7,
    title: 'INFINALON\nCROP TOP',
    subTitle: 'Nike Yoga Luxe',
    price: 57,
  ),
  BestSellersModel(
    image: AssetsManager.image7,
    title: 'SHELF-BRA\nCROPPED',
    subTitle: 'Nike Pro Dri-Fit',
    price: 22,
  ),
  BestSellersModel(
    image: AssetsManager.image7,
    title: 'New Release',
    subTitle: 'New Release',
    price: 73.35,
  ),
];
