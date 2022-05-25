import 'dart:math';

import 'package:chemical_scores_app/app/controllers/home_controller.dart';
import 'package:chemical_scores_app/app/views/components/generic_card_view.dart';
import 'package:chemical_scores_app/app/views/components/periodic_0_view.dart';
import 'package:chemical_scores_app/app/views/components/periodic_1_view.dart';
import 'package:chemical_scores_app/app/views/components/periodic_23_view.dart';
import 'package:chemical_scores_app/app/views/components/periodic_45_view.dart';
import 'package:chemical_scores_app/app/views/components/periodic_67_view.dart';
import 'package:chemical_scores_app/app/views/components/periodic_e_view.dart';
import 'package:chemical_scores_app/app/views/components/row_group_block_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class PeriodicTableView extends GetView<HomeController> {
  const PeriodicTableView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    const minWidth = 1760.0;

    return SafeArea(
        child: Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 15.0, horizontal: 7.0),
            child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: ConstrainedBox(
                    constraints: BoxConstraints(
                      maxWidth: max(screenWidth, minWidth),
                    ),
                    child: SingleChildScrollView(
                        child: Stack(alignment: Alignment.topCenter, children: [
                      Obx(() => controller.isLoading.isTrue
                          ? const Center(child: CircularProgressIndicator())
                          : Column(children: [
                              const Periodic0View(),
                              Periodic1View(
                                  h: controller.elementsList[0],
                                  he: controller.elementsList[1]),
                              Periodic23View(
                                  period: "2",
                                  left: controller.elementsList
                                      .getRange(2, 4)
                                      .toList(),
                                  right: controller.elementsList
                                      .getRange(4, 10)
                                      .toList()),
                              Periodic23View(
                                  period: "3",
                                  left: controller.elementsList
                                      .getRange(10, 12)
                                      .toList(),
                                  right: controller.elementsList
                                      .getRange(12, 18)
                                      .toList()),
                              Periodic45View(
                                  period: "4",
                                  all: controller.elementsList
                                      .getRange(18, 36)
                                      .toList()),
                              Periodic45View(
                                  period: "5",
                                  all: controller.elementsList
                                      .getRange(36, 54)
                                      .toList()),
                              Periodic67View(
                                  period: "6",
                                  left: controller.elementsList
                                      .getRange(54, 56)
                                      .toList(),
                                  right: controller.elementsList
                                      .getRange(70, 86)
                                      .toList()),
                              Periodic67View(
                                  period: "7",
                                  left: controller.elementsList
                                      .getRange(86, 88)
                                      .toList(),
                                  right: controller.elementsList
                                      .getRange(102, 118)
                                      .toList()),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 50.0),
                                child: Column(children: [
                                  PeriodicEView(
                                      period: "Lanthanide Series",
                                      all: controller.elementsList
                                          .getRange(56, 70)
                                          .toList()),
                                  PeriodicEView(
                                      period: "Actinide Series",
                                      all: controller.elementsList
                                          .getRange(88, 102)
                                          .toList())
                                ]),
                              )
                            ])),
                      const Text("Periodic Table of the Elements",
                          style: TextStyle(
                              fontSize: 32, fontWeight: FontWeight.w900)),
                      Positioned(
                          top: 100.0,
                          child: Padding(
                            padding: const EdgeInsets.only(right: 220.0),
                            child: Row(
                              children: const [
                                GenericCardView(),
                                RowGroupBlockView()
                              ],
                            ),
                          ))
                    ]))))));
  }
}
