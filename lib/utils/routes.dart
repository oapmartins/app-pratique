import 'package:get/get.dart';

import '../pages/home/home_page.dart';
import '../pages/login/login_page.dart';
import '../pages/splash/splash_page.dart';

final pages = [
  GetPage(name: splashPageRoute, page: () => const SplashPage()),
  GetPage(name: homePageRoute, page: () => const HomePage()),
  GetPage(name: loginPageRoute, page: () => const LoginPage()),
];

const String splashPageRoute = '/splash-page';
const String homePageRoute = '/home-page';
const String loginPageRoute = '/login-page';
