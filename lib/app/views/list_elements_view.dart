import 'package:chemical_scores_app/app/controllers/home_controller.dart';
import 'package:chemical_scores_app/app/views/components/element_card_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class ListElementsView extends GetView<HomeController> {
  const ListElementsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                children: const [
                  Expanded(
                    child: Text(
                      'List of Elements',
                      style:
                          TextStyle(fontSize: 32, fontWeight: FontWeight.w900),
                    ),
                  )
                ],
              ),
            ),
            Obx(() => controller.isLoading.isTrue
                ? const Center(child: CircularProgressIndicator())
                : Expanded(
                    child: ListView(
                      children: controller.elementsList
                          .map((element) => Card(
                                child: ListTile(
                                    onTap: () =>
                                        controller.onElementPage(element),
                                    leading: ElementCardView(element: element),
                                    title: Text(element.name ?? ""),
                                    subtitle:
                                        Text(element.groupBlock!.toUpperCase()),
                                    trailing: Text(element.atomicNumber ?? "",
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline5)),
                              ))
                          .toList(),
                    ),
                  ))
          ]),
    );
  }
}
