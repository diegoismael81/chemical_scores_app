import 'package:flutter/material.dart';

Color getColor(String groupBlock) {
  var color = const Color.fromARGB(255, 171, 143, 255); //no-metales
  switch (groupBlock) {
    case "alkali metal":
      color = const Color.fromARGB(255, 255, 199, 112);
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
      color = const Color.fromARGB(255, 106, 225, 109);
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
      color = const Color.fromARGB(255, 208, 255, 238);
      break;
  }
  return color;
}
