import 'package:flutter/material.dart';
import 'package:getx_app/controller/setting_controller.dart';
import 'package:provider/provider.dart';

class setting_page extends StatelessWidget {
  const setting_page({super.key});

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
        child: Consumer<settingProvider>(builder: (context, provider, _) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  // Get.changeThemeMode(ThemeMode.light);
                  provider.changeTheme();
                },
                child: const Text("Theme"),
              ),
              ElevatedButton(
                onPressed: () {
                  provider.changeTheme();
                  // Get.changeThemeMode(ThemeMode.dark);
                },
                child: const Text("dark"),
              ),
            ],
          );
        }),
      ),
    );
  }
}
