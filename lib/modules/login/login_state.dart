import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class LoginState {
  late TextEditingController groupController;
  late RxInt groupId;
  late RxString groupName;
  late RxList<String> members;

  LoginState() {
    groupController = TextEditingController();
    groupId = RxInt(0);
    groupName = RxString('');
    members = RxList<String>();
  }
}
