import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:app_pratique/pages/login/login_page.dart';
import 'package:app_pratique/pages/splash/splash_page.dart';
import 'package:app_pratique/utils/routes.dart';
import 'package:page_transition/page_transition.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      getPages: pages,
      home: AnimatedSplashScreen(
        backgroundColor: Colors.black,
        duration: 200,
        splashTransition: SplashTransition.rotationTransition,
        animationDuration: const Duration(milliseconds: 1000),
        pageTransitionType: PageTransitionType.fade,
        splashIconSize: 90,
        splash: const SplashPage(),
        nextScreen: const LoginPage(),
      ),
      locale: Get.deviceLocale,
    );
  }
}
