import 'dart:async';

import 'package:calculadora_utp/constant.dart';
import 'package:calculadora_utp/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(
      const Duration(seconds: 2),
      () => Get.toNamed(Routes.login),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: _buildBody(),
    );
  }

  _buildBody() {
    return Center(
      child: Image.asset(
        AppConstant.APP_LOGO,
        color: Colors.white,
        height: 100,
      ),
    );
  }
}
