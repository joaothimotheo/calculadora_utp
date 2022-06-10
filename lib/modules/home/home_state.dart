import 'package:calculadora_utp/models/group_model.dart';
import 'package:get/get.dart';

class HomeState {
  late RxInt groupId;
  late RxString groupName;
  late Rxn<GroupModel> members;

  HomeState() {
    groupId = RxInt(0);
    groupName = RxString('');
    members = Rxn<GroupModel>();
  }
}
