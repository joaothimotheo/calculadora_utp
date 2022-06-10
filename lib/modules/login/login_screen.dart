import 'package:calculadora_utp/constant.dart';
import 'package:calculadora_utp/modules/global_widgets/widget_custom_outlined_button.dart';
import 'package:calculadora_utp/modules/global_widgets/widget_custom_text_field.dart';
import 'package:calculadora_utp/modules/login/login_logic.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../theme/style.dart';
import 'login_state.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final LoginLogic logic = Get.put(LoginLogic());
  final LoginState state = Get.find<LoginLogic>().state;

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
      controller: logic.state.groupController,
      textInputType: TextInputType.number,
      textInputAction: TextInputAction.done,
      icon: Icons.groups,
      hint: 'Insira o número da equipe',
      label: 'Equipe:',
      isPassword: false,
      onPressed: () {},
    );
  }

  Widget _buildLoginButton() {
    return CustomOutlinedButton(
      onPressed: () => logic.getMember(),
      text: 'Entrar',
    );
  }
}
