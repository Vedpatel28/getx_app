import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_app/controller/setting_controller.dart';
import 'package:getx_app/views/screens/home_page.dart';
import 'package:getx_app/views/screens/setting_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => settingProvider(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        brightness: Provider.of<settingProvider>(context).theme
            ? Brightness.light
            : Brightness.dark,
      ),
      getPages: [
        GetPage(
          name: "/",
          page: () => const home_page(),
        ),
        GetPage(
          name: "/setting",
          page: () => const setting_page(),
        ),
      ],
    );
  }
}
