import 'package:calculadora_utp/modules/login/login_screen.dart';
import 'package:calculadora_utp/modules/resgister/register_screen.dart';
import 'package:calculadora_utp/modules/splash/splash_screen.dart';
import 'package:calculadora_utp/routes/routes.dart';
import 'package:get/route_manager.dart';

class AppPages {
  static final pages = [
    GetPage(
      name: Routes.splash,
      page: () => const SplashScreen(),
    ),
    GetPage(
      name: Routes.login,
      page: () => const LoginScreen(),
    ),
    GetPage(
      name: Routes.register,
      page: () => const RegisterScren(),
    ),
  ];
}
