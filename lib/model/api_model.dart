// ignore_for_file: camel_case_types
import 'package:get/get.dart';

class productModel {
  final String title;
  final String description;
  final int price;
  final String thumbnail;
  RxInt totalItems = 1.obs;
  RxInt totalPrice = 0.obs;

  productModel(
    this.title,
    this.description,
    this.price,
    this.thumbnail,
  );

  factory productModel.fromMap({required Map product}) {
    return productModel(
      product["title"],
      product["description"],
      product['price'],
      product['thumbnail'],
    );
  }
}
