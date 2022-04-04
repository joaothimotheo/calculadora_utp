import 'constant.dart';
import 'modules/splash/splash_screen.dart';
import 'package:flutter/material.dart';
import 'theme/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: AppConstant.APP_NAME,
      theme: themeData,
      home: const SplashScreen(),
    );
  }
}
