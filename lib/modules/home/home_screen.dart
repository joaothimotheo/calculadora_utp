import 'package:calculadora_utp/modules/home/drawer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../login/login_logic.dart';
import '../login/login_state.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final LoginLogic logic = Get.put(LoginLogic());
  final LoginState state = Get.find<LoginLogic>().state;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: logic.scaffoldKey,
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () => logic.logout(),
            icon: const Icon(Icons.logout),
          ),
        ],
        leading: IconButton(
          onPressed: () => logic.openDrawer(),
          icon: const Icon(Icons.groups),
        ),
        automaticallyImplyLeading: false,
        backgroundColor: Theme.of(context).primaryColor,
        title: const Text('Home'),
        centerTitle: true,
      ),
      drawer: MainDrawer(
        title: logic.state.groupName.value,
        members: logic.state.members,
      ),
    );
  }
}
