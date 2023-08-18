// ignore_for_file: camel_case_types

import 'package:get/get.dart';
import 'package:getx_app/model/api_model.dart';

class cartController extends GetxController {
  RxList<productModel> cartItems = <productModel>[].obs;
}
