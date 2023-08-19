// ignore_for_file: must_be_immutable, camel_case_types

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_app/controller/cart_controller.dart';
import 'package:getx_app/model/api_model.dart';

class Ecom_Cart extends StatelessWidget {
  Ecom_Cart({super.key});

  cartController cartcontroller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("E Commerce Cart"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Obx(
              () => Container(
                height: 600,
                child: ListView.builder(
                  itemCount: cartcontroller.cartItems.length,
                  itemBuilder: (context, index) {
                    productModel product = cartcontroller.cartItems[index];
                    return Card(
                      child: ListTile(
                        leading: CircleAvatar(
                          foregroundImage: NetworkImage(product.thumbnail),
                        ),
                        title: Text(product.title),
                        subtitle: Container(
                          width: 60,
                          child: Row(
                            children: [
                              IconButton(
                                onPressed: () {
                                  cartcontroller.decreaseItems(
                                    product: product,
                                  );
                                },
                                icon: const Icon(
                                    Icons.remove_circle_outline_sharp),
                              ),
                              Obx(
                                () => Text("${product.totalItems}"),
                              ),
                              IconButton(
                                onPressed: () {
                                  cartcontroller.increaseItems(
                                      product: product);
                                },
                                icon:
                                    const Icon(Icons.add_circle_outline_sharp),
                              ),
                            ],
                          ),
                        ),
                        trailing: Obx(
                          () => Text(
                              "\$ ${cartcontroller.totalAmount(product: product)}"),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
            const Spacer(),
            // Text("Total Amount \$ ${cartcontroller.pay}"),
          ],
        ),
      ),
    );
  }
}
