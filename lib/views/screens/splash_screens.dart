// ignore_for_file: camel_case_types

import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:getx_app/controller/helper/splash_page_helper.dart';
import 'package:getx_app/views/screens/ecom_home.dart';
import 'package:google_fonts/google_fonts.dart';

class splash_Screen extends StatelessWidget {
  const splash_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    splashScreenHelper.splashscreenHelper.doneFirst();
    print(splashScreenHelper.splashscreenHelper.doneFirst());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: SizedBox(
        height: 800,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 200),
              SizedBox(
                height: 300,
                child: AnimatedSplashScreen(
                  splash: Transform.scale(
                    scale: 1.5,
                    child: SpinKitWaveSpinner(
                      size: 200,
                      color: Colors.indigo.withOpacity(0.5),
                      waveColor: Colors.indigoAccent.withOpacity(0.2),
                      trackColor: Colors.blue.withOpacity(0.3),
                    ),
                  ),
                  nextScreen: Ecom_Home(),
                  duration: 3000,
                ),
              ),
              Text(
                "Welcome To Ecommerce App",
                style: GoogleFonts.adventPro(
                  textStyle: const TextStyle(
                    fontSize: 25,
                    color: Colors.blueAccent,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
