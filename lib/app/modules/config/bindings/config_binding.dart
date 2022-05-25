import 'package:chemical_scores_app/app/controllers/auth_controller.dart';
import 'package:get/get.dart';

class ConfigBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AuthController>(
      () => AuthController(),
    );
  }
}
