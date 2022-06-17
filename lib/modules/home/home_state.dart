import 'package:calculadora_utp/models/group_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class HomeState {
  late RxInt groupId;
  late RxString groupName;
  late Rxn<GroupModel> members;
  late RxBool suspension;
  late TextEditingController pesoTotal;
  late TextEditingController dtcPesoDiantera;
  late TextEditingController dtcPesoTraseira;
  late TextEditingController bitolaDianteria;
  late TextEditingController bitolaTraseira;
  late TextEditingController cprmBracoSusDianteira;
  late TextEditingController cprmBracoSusTraseira;
  late TextEditingController alturaVeicDianteiro;
  late TextEditingController alturaVeicTraseiro;
  late TextEditingController posicInstaMolaDianteira;
  late TextEditingController posicInstaMolaTraseira;

  HomeState() {
    groupId = RxInt(0);
    groupName = RxString('');
    members = Rxn<GroupModel>();
    pesoTotal = TextEditingController();
    dtcPesoDiantera = TextEditingController();
    dtcPesoTraseira = TextEditingController();
    bitolaDianteria = TextEditingController();
    bitolaTraseira = TextEditingController();
    cprmBracoSusDianteira = TextEditingController();
    cprmBracoSusTraseira = TextEditingController();
    alturaVeicDianteiro = TextEditingController();
    alturaVeicTraseiro = TextEditingController();
    posicInstaMolaDianteira = TextEditingController();
    posicInstaMolaTraseira = TextEditingController();
    suspension = RxBool(false);
  }
}
