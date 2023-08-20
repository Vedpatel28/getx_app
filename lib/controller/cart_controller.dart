// ignore_for_file: camel_case_types, unrelated_type_equality_checks

import 'package:get/get.dart';
import 'package:getx_app/model/api_model.dart';

class cartController extends GetxController {
  RxList<productModel> cartItems = <productModel>[].obs;
  int finelAmount = 0;
  RxInt pay = 0.obs;

  addProduct({required productModel product}) {
    cartItems.add(product);
    cartAmount();
  }

  removeProduct({required productModel product}) {
    cartItems.remove(product);
    cartAmount();
  }

  increaseItems({required productModel product}) {
    product.totalItems.value++;
    cartAmount();
    update();
  }

  decreaseItems({required productModel product}) {
    if (product.totalItems <= 1) {
      removeProduct(product: product);

      cartAmount();
    } else {
      product.totalItems.value--;
      cartAmount();
    }
    update();
  }

  totalAmount({required productModel product}) {
    finelAmount = product.totalItems.value * product.price;
    return finelAmount;
  }

  finelPay({required productModel product}) {
    finelAmount += product.price;
  }

  cartAmount() {
    pay.value = 0;

    for (var cartItem in cartItems) {
      pay.value = pay.value + cartItem.price * cartItem.totalItems.value;
    }
  }
}
