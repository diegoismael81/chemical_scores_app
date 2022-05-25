import 'package:get/get.dart';

import '../modules/config/bindings/config_binding.dart';
import '../modules/config/views/config_view.dart';
import '../modules/element/bindings/element_binding.dart';
import '../modules/element/views/element_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';
import '../modules/signup/bindings/signup_binding.dart';
import '../modules/signup/views/signup_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const initial = Routes.home;

  static final routes = [
    GetPage(
      name: _Paths.home,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.signup,
      page: () => const SignupView(),
      binding: SignupBinding(),
    ),
    GetPage(
      name: _Paths.config,
      page: () => const ConfigView(),
      binding: ConfigBinding(),
    ),
    GetPage(
      name: _Paths.element,
      page: () => const ElementView(),
      binding: ElementBinding(),
    ),
    GetPage(
      name: _Paths.login,
      page: () => const LoginView(),
      binding: LoginBinding(),
    ),
  ];
}
