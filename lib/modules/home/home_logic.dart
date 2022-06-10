import 'package:calculadora_utp/modules/home/home_state.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final HomeState state;

  HomeController({required this.state});

  void getMember() {
    switch (state.groupId.value) {
      case 15:
        state.groupName.value = "Jaguara";
        break;
      case 7:
        state.groupName.value = "Inverga mais não quebra";
        break;
      case 9:
        state.groupName.value = "Ladeira abaixo";
        break;
      case 125:
        state.groupName.value = "AWA";
        break;
      case 72:
        state.groupName.value = "Cavalo de Troia";
        break;
      default:
        state.groupName.value = "Equipe não encontrada";
    }
  }
}
