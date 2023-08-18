import 'package:flutter/material.dart';
import 'package:getx_app/controller/helper/api_helper.dart';
import 'package:getx_app/model/api_model.dart';

class Ecom_Home extends StatelessWidget {
  const Ecom_Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("E Com Home"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: FutureBuilder(
          future: Api_Helper.api_helper.getApi(),
          builder: (context,snapShot) {
            if(snapShot.hasData) {
              return GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                ),
                itemBuilder: (context, index) {
                  productModel product = snapShot.data![index];
                  return Card(
                    child: Column(children: [
                      CircleAvatar(
                        foregroundImage: NetworkImage(product.thumbnail),
                      )
                    ]),
                  );
                },
              );
            } else {
              return const Center(child: CircularProgressIndicator());
            }
          }
        ),
      ),
    );
  }
}
