import 'package:chemical_scores_app/app/data/models/chemical_element_model.dart';
import 'package:chemical_scores_app/app/controllers/home_controller.dart';
import 'package:chemical_scores_app/app/views/components/element_card_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class ChemicalElementCardView extends GetView<HomeController> {
  const ChemicalElementCardView({Key? key, required this.element})
      : super(key: key);
  final ChemicalElement element;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => controller.onElementPage(element),
      child: Stack(
        alignment: AlignmentDirectional.bottomCenter,
        children: [
          Stack(
            alignment: AlignmentDirectional.topEnd,
            children: [
              ElementCardView(element: element),
              Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(element.atomicNumber ?? "",
                      style: Theme.of(context).textTheme.titleMedium))
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Text(element.name ?? "",
                style: Theme.of(context).textTheme.bodyText2,
                overflow: TextOverflow.ellipsis),
          )
        ],
      ),
    );
  }
}
