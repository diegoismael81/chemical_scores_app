import 'package:flutter/material.dart';

import 'package:get/get.dart';

class GroupView extends GetView {
  const GroupView({Key? key, required this.value}) : super(key: key);
  final String value;

  @override
  Widget build(BuildContext context) {
    return SizedBox.square(
      dimension: 95.0,
      child: Stack(
        alignment: AlignmentDirectional.bottomCenter,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 7.0),
            child: Text(value, style: Theme.of(context).textTheme.titleMedium),
          ),
        ],
      ),
    );
  }
}
