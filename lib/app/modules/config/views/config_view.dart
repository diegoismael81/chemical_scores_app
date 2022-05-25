import 'package:chemical_scores_app/app/controllers/auth_controller.dart';
import 'package:chemical_scores_app/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class ConfigView extends GetView<AuthController> {
  const ConfigView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Center(
              child: Text(
                'Comming soon',
                style: TextStyle(fontSize: 20),
              ),
            ),
            Padding(
                padding: const EdgeInsets.only(top: 30.0),
                child: ElevatedButton.icon(
                    onPressed: () => Get.toNamed(Routes.signup),
                    icon: const Icon(Icons.person_add),
                    label: const Text("Sign Up")))
          ],
        ),
      ),
    );
  }
}
