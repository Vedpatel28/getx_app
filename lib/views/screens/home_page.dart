import 'package:flutter/material.dart';
import 'package:get/get.dart';

class home_page extends StatelessWidget {
  const home_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("home"),
        actions: [
          IconButton(
            onPressed: () {
              Get.toNamed(
                "/setting",
              );
            },
            icon: const Icon(Icons.settings),
          ),
        ],
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  Get.toNamed("/counter");
                },
                child: const Text("Counter"),
              ),
              const SizedBox(
                height: 50,
              ),
              GestureDetector(
                onTap: () {
                  Get.toNamed("/calculator");
                },
                child: const Text("Calculator"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
