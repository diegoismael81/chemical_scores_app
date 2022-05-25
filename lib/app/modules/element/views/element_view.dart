import 'package:chemical_scores_app/app/views/components/chemical_element_card_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../data/models/chemical_element_model.dart';
import '../../../controllers/element_controller.dart';

class ElementView extends GetView<ElementController> {
  const ElementView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final element = Get.arguments as ChemicalElement;
    return SafeArea(
        child: CustomScrollView(slivers: [
      SliverAppBar(
        iconTheme: IconThemeData(
          color: Theme.of(context).primaryColor,
        ),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        expandedHeight: 130.0,
        floating: true,
        pinned: true,
        flexibleSpace: FlexibleSpaceBar(
            background: Row(
              children: [
                const Expanded(flex: 2, child: SizedBox()),
                Expanded(
                    flex: 1, child: ChemicalElementCardView(element: element))
              ],
            ),
            title: Text(element.name ?? "",
                style: Theme.of(context).textTheme.headline5)),
      ),
      SliverFillRemaining(
          child: Scaffold(
        appBar: TabBar(
            labelColor: Theme.of(context).primaryColor,
            tabs: controller.myTabs,
            controller: controller.tabController),
        body: TabBarView(controller: controller.tabController, children: [
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 8.0, horizontal: 14.0),
            child: ListTile(
                leading: const Icon(Icons.add_comment_sharp, size: 35.0),
                title: const Text("History"),
                subtitle:
                    Text(element.history ?? "", textAlign: TextAlign.justify)),
          ),
          Column(
            children: [
              ListTile(
                  leading: const Icon(Icons.beenhere, size: 35.0),
                  title: const Text("Group Block"),
                  subtitle: Text(element.groupBlock ?? "",
                      textAlign: TextAlign.justify)),
              ListTile(
                  leading: const Icon(Icons.beenhere, size: 35.0),
                  title: const Text("Atomic Mass"),
                  subtitle: Text(element.atomicMass ?? "",
                      textAlign: TextAlign.justify)),
              ListTile(
                  leading: const Icon(Icons.beenhere, size: 35.0),
                  title: const Text("Density"),
                  subtitle:
                      Text(element.density ?? "", textAlign: TextAlign.justify))
            ],
          )
        ]),
      ))
    ]));
  }
}
