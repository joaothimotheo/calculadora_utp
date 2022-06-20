import 'package:calculadora_utp/constant.dart';
import 'package:calculadora_utp/modules/global_widgets/widget_custom_outlined_button.dart';
import 'package:calculadora_utp/modules/global_widgets/widget_custom_text_field.dart';
import 'package:calculadora_utp/modules/home/drawer.dart';
import 'package:calculadora_utp/modules/home/home_logic.dart';
import 'package:calculadora_utp/modules/home/home_state.dart';
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
  final HomeLogic controller = Get.put(HomeLogic());
  final HomeState homeState = Get.find<HomeLogic>().state;
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
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: ListView(
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        children: [
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Obx(
                () => Text(
                  controller.state.suspension.value
                      ? "Cálculo angular de suspensão"
                      : "Cálculo da elástica das molas",
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                  ),
                ),
              )
            ],
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                "Informações sobre cada roda ",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                ),
              ),
            ],
          ),
          const SizedBox(height: 40),
          SizedBox(
            height: 500,
            child: GridView(
              shrinkWrap: true,
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              addAutomaticKeepAlives: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 16.0,
                crossAxisSpacing: 10.0,
              ),
              children: [
                _buildContainerWheel(wheel: "Roda 1"),
                _buildContainerWheel(wheel: "Roda 2"),
                _buildContainerWheel(wheel: "Roda 3"),
                _buildContainerWheel(wheel: "Roda 4"),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildContainerWheel({String? wheel}) {
    return SizedBox(
      height: 2000,
      width: 100,
      child: Column(
        children: [
          Text(wheel!),
          const SizedBox(height: 10),
          Flexible(
            child: Image.asset(
              AppConstant.CAR_WHEEL,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 5),
          CustomOutlinedButton(
            onPressed: () {
              Get.defaultDialog(
                contentPadding: const EdgeInsets.all(16.0),
                confirmTextColor: Colors.white,
                cancelTextColor: Theme.of(context).primaryColor,
                title: wheel,
                textConfirm: "Salvar",
                textCancel: "Cancelar",
                buttonColor: Theme.of(context).primaryColor,
                content: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildAlertTextField(),
                  ],
                ),
              );
            },
            text: wheel,
          ),
          // CustomTextField(
          //   label: wheel,
          //   hint: wheel,
          //   isPassword: false,
          //   onPressed: () {},
          // ),
        ],
      ),
    );
  }

  Widget _buildAlertTextField() {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Informação A: "),
          const SizedBox(height: 5),
          CustomTextField(
            isPassword: false,
            onPressed: () {},
          ),
          const Text("Informação A: "),
          const SizedBox(height: 5),
          CustomTextField(
            isPassword: false,
            onPressed: () {},
          ),
          const Text("Informação A: "),
          const SizedBox(height: 5),
          CustomTextField(
            isPassword: false,
            onPressed: () {},
          ),
          const Text("Informação A: "),
          const SizedBox(height: 5),
          CustomTextField(
            isPassword: false,
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
