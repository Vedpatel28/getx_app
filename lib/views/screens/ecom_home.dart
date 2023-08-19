// ignore_for_file: must_be_immutable, camel_case_types

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_app/controller/cart_controller.dart';
import 'package:getx_app/controller/helper/api_helper.dart';
import 'package:getx_app/controller/setting_controller.dart';
import 'package:getx_app/model/api_model.dart';

class Ecom_Home extends StatelessWidget {
  Ecom_Home({super.key});


  final settingController controller = Get.find();
  cartController cartcontroller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("E Commerce"),
        actions: [
          Row(
            children: [
              IconButton(
                onPressed: () {
                  controller.changeTheme();
                },
                icon: const Icon(
                  Icons.dark_mode_outlined,
                ),
              ),
              IconButton(
                onPressed: () {
                  Get.toNamed("/ecom_Cart");
                },
                icon: const Icon(
                  Icons.shopping_bag_rounded,
                ),
              ),
            ],
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: FutureBuilder(
          future: Api_Helper.api_helper.getApi(),
          builder: (context, snapShot) {
            if (snapShot.hasData) {
              return GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 2 / 3,
                  crossAxisSpacing: 12,
                  mainAxisSpacing: 12,
                ),
                itemCount: snapShot.data!.length,
                itemBuilder: (context, index) {
                  productModel product = snapShot.data![index];
                  return Card(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 120,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(
                                product.thumbnail,
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Container(
                          height: 50,
                          alignment: Alignment.center,
                          child: Text(product.title),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 50,
                                alignment: Alignment.center,
                                child: Text("\$ ${product.price}"),
                              ),
                              IconButton(
                                onPressed: () {
                                  if (cartcontroller.cartItems
                                      .contains(product)) {
                                    Get.snackbar(
                                      product.title,
                                      "Already added",
                                      barBlur: 2,
                                      animationDuration:
                                          const Duration(milliseconds: 300),
                                      forwardAnimationCurve:
                                          Curves.easeInOutQuad,
                                      onTap: (snack) {
                                        Get.toNamed("/ecom_Cart");
                                      },
                                      duration: const Duration(
                                        milliseconds: 1200,
                                      ),
                                    );
                                  } else {
                                    cartcontroller.addProduct(product: product);
                                    Get.snackbar(
                                      product.title,
                                      "add In Cart",
                                      barBlur: 2,
                                      animationDuration:
                                          const Duration(milliseconds: 300),
                                      forwardAnimationCurve:
                                          Curves.easeInOutQuad,
                                      onTap: (snack) {
                                        Get.toNamed("/ecom_Cart");
                                      },
                                      duration: const Duration(
                                        milliseconds: 1200,
                                      ),
                                    );
                                  }
                                },
                                icon: const Icon(Icons.shopping_bag_outlined),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              );
            } else if (snapShot.hasError) {
              return Text("${snapShot.error}");
            } else {
              return const Center(child: CircularProgressIndicator());
            }
          },
        ),
      ),
    );
  }
}
