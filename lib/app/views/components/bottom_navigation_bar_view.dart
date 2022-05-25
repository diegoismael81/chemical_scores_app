import 'package:chemical_scores_app/app/data/models/menu_item_model.dart';
import 'package:chemical_scores_app/app/controllers/home_controller.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

List<MenuItem> _menuItems = [
  MenuItem("Periodic Table", Icons.grid_4x4),
  MenuItem("List of Elements", Icons.list),
  MenuItem("Profile", Icons.person),
];

class BottomNavigationBarView extends GetView<HomeController> {
  const BottomNavigationBarView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => BottomNavigationBar(
          onTap: (value) => controller.onBottomNavigationTap(value),
          type: BottomNavigationBarType.fixed,
          currentIndex: controller.index.value,
          items: _menuItems
              .map((e) =>
                  BottomNavigationBarItem(icon: Icon(e.icon), label: e.title!))
              .toList()),
    );
  }
}
