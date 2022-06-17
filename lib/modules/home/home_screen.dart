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
            children: const [
              Text(
                "Informações sobre cada roda ",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                ),
              ),
            ],
          ),
          const SizedBox(height: 40),
          // _inputvalues(
          //   title: "Informe o peso total em Kg ",
          //   hint: 'Peso total',
          //   label: 'Peso Total',
          //   controller: controller.state.pesoTotal,
          // ),
          // const SizedBox(height: 10),
          // _inputvalues(
          //   title: "Informe a distruibuição do peso diantera em %",
          //   hint: 'Distribuição de peso dianteira',
          //   label: 'Distribuição de peso dianteira',
          // ),
          // const SizedBox(height: 10),
          // _inputvalues(
          //   title: "Informe a distruibuição do peso traseira em %",
          //   hint: 'Distribuição de peso traseira',
          //   label: 'Distribuição de peso dianteira',
          // ),
          // const SizedBox(height: 10),
          // _inputvalues(
          //   title: "Informe o valor da Bitola dianteira em mm",
          //   hint: 'Valor da bitola dianteira em mm',
          //   label: 'Valor da bitola dianteira em mm',
          // ),
          // const SizedBox(height: 10),
          // _inputvalues(
          //   title: "Informe o valor da Bitola dianteira em mm",
          //   hint: 'Valor da bitola dianteira em mm',
          //   label: 'Valor da bitola dianteira em mm',
          // ),
          // const SizedBox(height: 10),
          // _inputvalues(
          //   title: "Informe o peso total",
          //   hint: 'Peso total',
          //   label: 'Peso Total',
          // ),
          // const SizedBox(height: 10),
          // _inputvalues(
          //   title: "Informe o peso total",
          //   hint: 'Peso total',
          //   label: 'Peso Total',
          // ),
          // const SizedBox(height: 10),
          // _inputvalues(
          //   title: "Informe o peso total",
          //   hint: 'Peso total',
          //   label: 'Peso Total',
          // ),
          // const SizedBox(height: 10),
        ],
      ),
    );
  }

  _inputvalues(
      {String? title,
      String? hint,
      String? label,
      TextEditingController? controller}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title!,
          style: const TextStyle(
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(height: 10),
        CustomTextField(
          controller: controller,
          hint: hint,
          label: label,
          isPassword: false,
          onPressed: () {},
        ),
      ],
    );
  }
}
