import 'package:chemical_scores_app/app/data/models/chemical_element_model.dart';
import 'package:chemical_scores_app/app/views/components/chemical_element_card_view.dart';
import 'package:chemical_scores_app/app/views/components/group_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class Periodic1View extends GetView {
  const Periodic1View({Key? key, required this.h, required this.he})
      : super(key: key);
  final ChemicalElement h;
  final ChemicalElement he;

  @override
  Widget build(BuildContext context) {
    List<Widget> content = [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Text(
          "1",
          style: Theme.of(context).textTheme.titleLarge,
        ),
      )
    ];

    content.add(ChemicalElementCardView(element: h));
    content.add(const GroupView(value: "2"));

    for (var i = 0; i < 10; i++) {
      content.add(const GroupView(value: ""));
    }

    content.add(const GroupView(value: "13"));
    content.add(const GroupView(value: "14"));
    content.add(const GroupView(value: "15"));
    content.add(const GroupView(value: "16"));
    content.add(const GroupView(value: "17"));

    content.add(ChemicalElementCardView(element: he));

    return Row(
      children: content,
    );
  }
}
