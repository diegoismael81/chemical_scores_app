import 'package:chemical_scores_app/app/data/models/chemical_element_model.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class ElementCardView extends GetView {
  const ElementCardView({Key? key, required this.element}) : super(key: key);
  final ChemicalElement element;

  @override
  Widget build(BuildContext context) {
    return SizedBox.square(
      dimension: 95.0,
      child: Card(
        elevation: 4.0,
        color: element.color,
        child: Center(
          child: Text(element.symbol ?? "",
              style: Theme.of(context).textTheme.headline4),
        ),
      ),
    );
  }
}
