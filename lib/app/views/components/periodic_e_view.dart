import 'package:chemical_scores_app/app/data/models/chemical_element_model.dart';
import 'package:chemical_scores_app/app/views/components/chemical_element_card_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class PeriodicEView extends GetView {
  const PeriodicEView({Key? key, required this.period, required this.all})
      : super(key: key);
  final String period;
  final List<ChemicalElement> all;

  @override
  Widget build(BuildContext context) {
    List<Widget> content = [
      Container(
        margin: const EdgeInsets.only(right: 10.0),
        width: 120.0,
        child: Text(
          period,
          textAlign: TextAlign.right,
          style: Theme.of(context).textTheme.titleLarge,
        ),
      )
    ];

    for (var item in all) {
      content.add(ChemicalElementCardView(element: item));
    }

    return Container(
        margin: const EdgeInsets.only(left: 50.0),
        child: Row(children: content));
  }
}
