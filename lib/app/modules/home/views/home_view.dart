import 'package:chemical_scores_app/app/views/components/bottom_navigation_bar_view.dart';
import 'package:chemical_scores_app/app/views/list_elements_view.dart';
import 'package:chemical_scores_app/app/views/periodic_table_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../controllers/home_controller.dart';

List<Widget> _content = [
  const PeriodicTableView(),
  const ListElementsView(),
  Container()
];

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Obx(() => controller.isTable.value ? _content[0] : _content[1]),
        bottomNavigationBar: const BottomNavigationBarView());
  }
}
