import 'package:flutter/material.dart';

import 'package:get/get.dart';

class Periodic0View extends GetView {
  const Periodic0View({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> content = [];
    content.add(SizedBox(
        width: 95.0,
        child: Stack(alignment: AlignmentDirectional.bottomCenter, children: [
          Padding(
              padding: const EdgeInsets.only(bottom: 7.0),
              child: Text("Group 1",
                  style: Theme.of(context).textTheme.titleMedium))
        ])));

    for (var i = 0; i < 16; i++) {
      content.add(SizedBox(
          width: 95.0,
          child: Stack(alignment: AlignmentDirectional.bottomCenter, children: [
            Padding(
                padding: const EdgeInsets.only(bottom: 7.0),
                child: Text("", style: Theme.of(context).textTheme.titleMedium))
          ])));
    }
    content.add(SizedBox(
        width: 95.0,
        child: Stack(alignment: AlignmentDirectional.bottomCenter, children: [
          Padding(
              padding: const EdgeInsets.only(bottom: 7.0),
              child: Text("18", style: Theme.of(context).textTheme.titleMedium))
        ])));

    return Row(
      children: content,
    );
  }
}
