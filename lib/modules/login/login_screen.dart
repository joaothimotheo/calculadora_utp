import 'package:calculadora_utp/constant.dart';
import 'package:calculadora_utp/modules/global_widgets/widget_custom_outlined_button.dart';
import 'package:calculadora_utp/modules/global_widgets/widget_custom_text_field.dart';
import 'package:calculadora_utp/modules/resgister/register_screen.dart';
import 'package:flutter/material.dart';

import '../../theme/style.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool showPassword = true;
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
              _buildTextFieldPassword(),
              const SizedBox(height: 20),
              _buildLoginButton(),
              const SizedBox(height: 20),
              _buildRegisterButton(),
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
      'Faça Login ou crie sua conta para usar a Calculadora',
      style: poppinsRegular14Black,
    );
  }

  Widget _buildTextFieldEmail() {
    return CustomTextField(
      icon: Icons.person,
      hint: 'Insira seu nome de usuário',
      label: 'Usuário',
      isPassword: false,
      onPressed: () {},
    );
  }

  Widget _buildTextFieldPassword() {
    return CustomTextField(
      icon: Icons.vpn_key,
      hint: 'Insira sua senha',
      label: 'Senha',
      isPassword: true,
      hidePassword: showPassword ? Icons.visibility : Icons.visibility_off,
      obscureText: showPassword,
      onPressed: () {
        setState(() {
          showPassword = !showPassword;
        });
      },
    );
  }

  Widget _buildLoginButton() {
    return CustomOutlinedButton(
      onPressed: () {},
      text: 'Entrar',
    );
  }

  Widget _buildRegisterButton() {
    return GestureDetector(
      child: const Text(
        'Não possui um cadastro? Cadastre-se',
        style: TextStyle(
          decoration: TextDecoration.underline,
        ),
      ),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const RegisterScren(),
          ),
        );
      },
    );
  }
}
