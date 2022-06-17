import 'package:calculadora_utp/modules/global_widgets/widget_custom_outlined_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'home_logic.dart';
import 'home_state.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({Key? key, required this.title, required this.members})
      : super(key: key);

  final String title;
  final List<String> members;

  @override
  Widget build(BuildContext context) {
    final HomeLogic logic = Get.put(HomeLogic());
    final HomeState state = Get.find<HomeLogic>().state;
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Bem vindo equipe,\n $title',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          const Text('Membros da Equipe: '),
          ListView.builder(
            padding: const EdgeInsets.all(8.0),
            shrinkWrap: true,
            itemCount: members.length,
            itemBuilder: (context, index) {
              var item = members.elementAt(index);
              return Text(
                item,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              );
            },
          ),
          Padding(
              padding: const EdgeInsets.all(12.0),
              child: Obx(
                () => Expanded(
                  child: CustomOutlinedButton(
                    text: logic.state.suspension.value
                        ? "Cálculo angular de suspensão"
                        : "Cálculo elástica das molas",
                    onPressed: () {
                      logic.state.suspension.value =
                          !logic.state.suspension.value;
                    },
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
