import 'package:chemical_scores_app/app/utils/utils.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class RowGroupBlockView extends GetView {
  const RowGroupBlockView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              RowView(name: "nonmetal"),
              RowView(name: "alkali metal"),
              RowView(name: "alkaline earth metal"),
              RowView(name: "metalloid"),
              RowView(name: "halogen")
            ]),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            RowView(name: "metal"),
            RowView(name: "transition metal"),
            RowView(name: "noble gas"),
            RowView(name: "post-transition metal"),
            RowView(name: "actinoid"),
            RowView(name: "lanthanoid")
          ],
        )
      ],
    );
  }
}

class RowView extends GetView {
  const RowView({Key? key, required this.name}) : super(key: key);
  final String name;

  @override
  Widget build(BuildContext context) {
    return Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: SizedBox.square(
              dimension: 15,
              child: Container(
                color: getColor(name),
              ),
            ),
          ),
          Text(name)
        ]);
  }
}

/*
Color get color {
    var color = const Color.fromARGB(255, 171, 143, 255); //no-metales
    switch (groupBlock) {
      case "alkali metal":
        color = const Color.fromARGB(255, 255, 199, 142);
        break;
      case "alkaline earth metal":
        color = const Color.fromARGB(255, 255, 224, 141);
        break;
      case "metalloid":
        color = const Color.fromARGB(255, 143, 255, 155);
        break;
      case "halogen":
        color = const Color.fromARGB(255, 251, 141, 254);
        break;
      case "metal":
        color = const Color.fromARGB(255, 255, 250, 138);
        break;
      case "transition metal":
        color = const Color.fromARGB(255, 236, 255, 139);
        break;
      case "noble gas":
        color = const Color.fromARGB(255, 142, 222, 255);
        break;
      case "post-transition metal":
        color = const Color.fromARGB(255, 200, 200, 200);
        break;
      case "actinoid":
        color = const Color.fromARGB(255, 225, 255, 138);
        break;
      case "lanthanoid":
        color = const Color.fromARGB(255, 208, 255, 138);
        break;
    }
    return color;
  }*/