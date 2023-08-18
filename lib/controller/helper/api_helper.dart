import 'package:dio/dio.dart';

import '../../model/api_model.dart';

class Api_Helper {
  Api_Helper._();

  static final Api_Helper api_helper = Api_Helper._();

  Future<List<productModel>?> getApi() async {
    Dio dio = Dio();

    String api = "https://dummyjson.com/products?limit=100";

    Response response = await dio.get(api);

    if (response.statusCode == 200) {
      List allProduct = response.data['products'];

      List<productModel> listOfProduct = allProduct.map((e) => productModel.fromMap(product: e)).toList();
      return listOfProduct;
    }
  }
}
