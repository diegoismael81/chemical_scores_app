import 'package:chemical_scores_app/app/data/models/chemical_element_model.dart';
import 'package:chemical_scores_app/app/views/components/chemical_element_card_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class Periodic45View extends GetView {
  const Periodic45View({Key? key, required this.period, required this.all})
      : super(key: key);
  final String period;
  final List<ChemicalElement> all;

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
    for (var item in all) {
      content.add(ChemicalElementCardView(element: item));
    }

    return Row(
      children: content,
    );
  }
}
