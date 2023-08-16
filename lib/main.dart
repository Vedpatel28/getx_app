import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_app/controller/setting_controller.dart';
import 'package:getx_app/views/screens/home_page.dart';
import 'package:getx_app/views/screens/setting_page.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final settingProvider controller = Get.put(settingProvider());

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          useMaterial3: true,
        brightness: controller.theme.value ? Brightness.light : Brightness.dark,
      ),
      getPages: [
        GetPage(
          name: "/",
          page: () => home_page(),
        ),
        GetPage(
          name: "/setting",
          page: () => setting_page(),
        ),
      ],
    );
  }
}
