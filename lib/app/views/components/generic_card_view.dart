import 'package:flutter/material.dart';

import 'package:get/get.dart';

class GenericCardView extends GetView {
  const GenericCardView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 50.0),
      child: SizedBox.square(
        dimension: 120.0,
        child: Card(
          elevation: 4.0,
          color: const Color.fromARGB(255, 215, 214, 214),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Stack(
              alignment: AlignmentDirectional.topEnd,
              children: [
                Text("Atomic Number",
                    style: Theme.of(context).textTheme.caption),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 30.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Symbol",
                            style: Theme.of(context).textTheme.headline5),
                        const Text("Name")
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
