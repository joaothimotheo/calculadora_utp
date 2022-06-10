import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../models/group_model.dart';

class LoginState {
  late TextEditingController groupController;
  late RxInt groupId;
  late RxString groupName;
  late Rxn<GroupModel> members;

  LoginState() {
    groupController = TextEditingController();
    groupId = RxInt(0);
    groupName = RxString('');
    members = Rxn<GroupModel>();
  }
}
