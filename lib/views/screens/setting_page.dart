import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:getx_app/controller/setting_controller.dart';

class setting_page extends StatelessWidget {
  setting_page({super.key});

  final settingProvider controller = Get.put(settingProvider());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Setting",
          style: TextStyle(),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                controller.changeTheme();
              },
              child: const Text("Theme"),
            ),
          ],
        ),
      ),
    );
  }
}
