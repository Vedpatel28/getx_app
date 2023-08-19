import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:getx_app/controller/cart_controller.dart';
import 'package:getx_app/controller/helper/splash_page_helper.dart';
import 'package:getx_app/controller/setting_controller.dart';
import 'package:getx_app/views/screens/calculator_page.dart';
import 'package:getx_app/views/screens/counter_page.dart';
import 'package:getx_app/views/screens/ecom_cart.dart';
import 'package:getx_app/views/screens/ecom_home.dart';
import 'package:getx_app/views/screens/setting_page.dart';
import 'package:getx_app/views/screens/splash_screens.dart';

void main() async {

  WidgetsFlutterBinding.ensureInitialized();

  await GetStorage.init();

  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final settingController controller = Get.put(settingController());
  final cartController cartcontroller = Get.put(cartController());

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          useMaterial3: true,
          brightness: controller.models.theme.value
              ? Brightness.light
              : Brightness.dark,
        ),
        getPages: [
          GetPage(
            name: "/",
            page: () => splashScreenHelper.splashscreenHelper.checkFirstTime
                ? const splash_Screen()
                : Ecom_Home(),
          ),
          GetPage(
            name: "/setting",
            page: () => setting_page(),
          ),
          GetPage(
            name: "/counter",
            page: () => counter_Page(),
          ),
          GetPage(
            name: "/calculator",
            page: () => calculator_page(),
          ),
          GetPage(
            name: "/ecom_Home",
            page: () => Ecom_Home(),
          ),
          GetPage(
            name: "/ecom_Cart",
            page: () => Ecom_Cart(),
          ),
        ],
      ),
    );
  }
}
