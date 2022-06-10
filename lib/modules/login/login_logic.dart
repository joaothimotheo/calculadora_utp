import 'dart:developer';

import 'package:calculadora_utp/modules/login/login_state.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginLogic extends GetxController {
  final LoginState state = LoginState();

  nextButton() {}

  void getMember() {
    switch (state.groupController.text) {
      case "15":
        state.groupName.value = "Jaguara";
        state.members.addAll(['Camylla', 'Rodrigo']);
        Get.snackbar(
          'Bem Vindos',
          'Equipe ${state.groupName.value}',
          backgroundColor: Colors.green,
          snackPosition: SnackPosition.BOTTOM,
        );
        break;
      case "7":
        state.groupName.value = "Inverga mais não quebra";
        state.members.addAll(['Fabbio', 'Lucas', 'Marcelo']);
        Get.snackbar(
          'Bem Vindos',
          'Equipe ${state.groupName.value}',
          backgroundColor: Colors.green,
          snackPosition: SnackPosition.BOTTOM,
        );
        break;
      case "9":
        state.groupName.value = "Ladeira abaixo";
        state.members.addAll(['Eduardo', 'Ricardo', 'Welington']);
        Get.snackbar(
          'Bem Vindos',
          'Equipe ${state.groupName.value}',
          backgroundColor: Colors.green,
          snackPosition: SnackPosition.BOTTOM,
        );
        break;
      case "125":
        state.groupName.value = "AWA";
        state.members.addAll(['Airton', 'Alexandre', 'Willian']);
        Get.snackbar(
          'Bem Vindos',
          'Equipe ${state.groupName.value}',
          backgroundColor: Colors.green,
          snackPosition: SnackPosition.BOTTOM,
        );
        break;
      case "72":
        state.groupName.value = "Cavalo de Troia";
        state.members.addAll(['Ghiorge', 'Henrique']);
        Get.snackbar(
          'Bem Vindos',
          'Equipe ${state.groupName.value}',
          backgroundColor: Colors.green,
          snackPosition: SnackPosition.BOTTOM,
          colorText: Colors.white,
        );
        break;
      default:
        log("Não foi encontrada nenhuma equpe");
        state.groupName.value = "Equipe não encontrada";
        Get.snackbar(
          'Falha',
          'Equipe não encontrada no banco de dados',
          backgroundColor: Colors.red,
          snackPosition: SnackPosition.BOTTOM,
          colorText: Colors.white,
        );
    }
  }
}
