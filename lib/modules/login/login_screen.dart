import 'package:calculadora_utp/constant.dart';
import 'package:calculadora_utp/modules/global_widgets/widget_custom_outlined_button.dart';
import 'package:calculadora_utp/modules/global_widgets/widget_custom_text_field.dart';
import 'package:calculadora_utp/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../theme/style.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 120),
              _buildImageLogo(),
              const SizedBox(height: 50),
              _buildText(),
              const SizedBox(height: 20),
              _buildTextFieldEmail(),
              const SizedBox(height: 20),
              _buildLoginButton(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildImageLogo() {
    return Center(
      child: Image.asset(
        AppConstant.APP_LOGO,
        color: Theme.of(context).primaryColor,
      ),
    );
  }

  Widget _buildText() {
    return Text(
      'Insira o nome da sua equipe para logar.',
      style: poppinsRegular14Black,
    );
  }

  Widget _buildTextFieldEmail() {
    return CustomTextField(
      icon: Icons.groups,
      hint: 'Insira o nome da equipe',
      label: 'Equipe',
      isPassword: false,
      onPressed: () {},
    );
  }

  Widget _buildLoginButton() {
    return CustomOutlinedButton(
      onPressed: () => Get.toNamed(Routes.calculator),
      text: 'Entrar',
    );
  }
}
