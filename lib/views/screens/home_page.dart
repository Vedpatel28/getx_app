import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_app/views/screens/setting_page.dart';

class home_page extends StatelessWidget {
  const home_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("home"),
      ),
      body: Column(
        children: [
          IconButton(
            onPressed: () {
              Get.toNamed(
                "/setting",
              );
            },
            icon: const Icon(Icons.settings),
          ),
        ],
      ),
    );
  }
}
