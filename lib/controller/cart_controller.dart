// ignore_for_file: camel_case_types, unrelated_type_equality_checks

import 'package:get/get.dart';
import 'package:getx_app/model/api_model.dart';

class cartController extends GetxController {
  RxList<productModel> cartItems = <productModel>[].obs;
  RxInt totalPay = 0.obs;

  addProduct({required productModel product}) {
    cartItems.add(product);
  }

  removeProduct({required productModel product}) {
    cartItems.remove(product);
  }

  increaseItems({required productModel product}) {
    product.totalItems.value++;
    update();
  }

  decreaseItems({required productModel product}) {
    if (product.totalItems == 0) {
      removeProduct(product: product);
    } else {
      product.totalItems.value--;
    }
    update();
  }
}
