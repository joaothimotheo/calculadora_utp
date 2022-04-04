import 'package:calculadora_utp/modules/global_widgets/custom_scaffold.dart';

import 'package:flutter/material.dart';

class RegisterScren extends StatefulWidget {
  const RegisterScren({Key? key}) : super(key: key);

  @override
  State<RegisterScren> createState() => _RegisterScrenState();
}

class _RegisterScrenState extends State<RegisterScren> {
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: Container(),
      title: 'Cadastro da Equipe',
      elevation: 0.0,
    );
  }
}
