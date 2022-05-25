import 'package:chemical_scores_app/app/data/models/chemical_element_model.dart';
import 'package:chemical_scores_app/app/views/components/chemical_element_card_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class Periodic67View extends GetView {
  const Periodic67View(
      {Key? key, required this.period, required this.left, required this.right})
      : super(key: key);
  final String period;
  final List<ChemicalElement> left;
  final List<ChemicalElement> right;

  @override
  Widget build(BuildContext context) {
    List<Widget> content = [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Text(
          period,
          style: Theme.of(context).textTheme.titleLarge,
        ),
      )
    ];

    for (var item in left) {
      content.add(ChemicalElementCardView(element: item));
    }

    for (var item in right) {
      content.add(ChemicalElementCardView(element: item));
    }

    return Row(children: content);
  }
}
