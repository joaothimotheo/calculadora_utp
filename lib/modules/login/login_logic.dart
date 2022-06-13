import 'dart:developer';

import 'package:calculadora_utp/modules/login/login_state.dart';
import 'package:calculadora_utp/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginLogic extends GetxController {
  final LoginState state = LoginState();
  var scaffoldKey = GlobalKey<ScaffoldState>();

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
          colorText: Colors.white,
          snackPosition: SnackPosition.BOTTOM,
        );
        Get.toNamed(Routes.home);
        break;
      case "7":
        state.groupName.value = "Inverga mais não quebra";
        state.members.addAll(['Fabbio', 'Lucas', 'Marcelo']);
        Get.snackbar(
          'Bem Vindos',
          'Equipe ${state.groupName.value}',
          backgroundColor: Colors.green,
          colorText: Colors.white,
          snackPosition: SnackPosition.BOTTOM,
        );
        Get.toNamed(Routes.home);
        break;
      case "9":
        state.groupName.value = "Ladeira abaixo";
        state.members.addAll(['Eduardo', 'Ricardo', 'Welington']);
        Get.snackbar(
          'Bem Vindos',
          'Equipe ${state.groupName.value}',
          backgroundColor: Colors.green,
          colorText: Colors.white,
          snackPosition: SnackPosition.BOTTOM,
        );
        Get.toNamed(Routes.home);
        break;
      case "125":
        state.groupName.value = "AWA";
        state.members.addAll(['Airton', 'Alexandre', 'Willian']);
        Get.snackbar(
          'Bem Vindos',
          'Equipe ${state.groupName.value}',
          backgroundColor: Colors.green,
          colorText: Colors.white,
          snackPosition: SnackPosition.BOTTOM,
        );
        Get.toNamed(Routes.home);
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
        Get.toNamed(Routes.home);
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

  void logout() {
    state.groupName.value = "";
    state.members.addAll(['Camylla', 'Rodrigo']);
    state.members.clear();
    Get.snackbar(
      'Logout',
      'Você foi desconectado!',
      colorText: Colors.white,
      backgroundColor: Colors.red,
      snackPosition: SnackPosition.BOTTOM,
    );
    Get.offAndToNamed(Routes.login);
  }

  void openDrawer() {
    scaffoldKey.currentState?.openDrawer();
  }
}
