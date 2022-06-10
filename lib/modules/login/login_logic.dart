import 'dart:developer';

import 'package:calculadora_utp/modules/login/login_state.dart';
import 'package:get/get.dart';

class LoginLogic extends GetxController {
  final LoginState state = LoginState();

  nextButton() {}

  void getMember() {
    switch (state.groupController.text) {
      case "15":
        state.groupName.value = "Jaguara";
        log("Bem vindos ${state.groupName.value}");
        break;
      case "7":
        state.groupName.value = "Inverga mais não quebra";
        break;
      case "9":
        state.groupName.value = "Ladeira abaixo";
        break;
      case "125":
        state.groupName.value = "AWA";
        break;
      case "72":
        state.groupName.value = "Cavalo de Troia";
        break;
      default:
        log("Não foi encontrada nenhuma equpe");
        state.groupName.value = "Equipe não encontrada";
    }
  }
}
