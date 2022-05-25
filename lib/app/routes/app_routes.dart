part of 'app_pages.dart';

abstract class Routes {
  Routes._();
  static const home = _Paths.home;
  static const signup = _Paths.signup;
  static const config = _Paths.config;
  static const element = _Paths.element;
  static const login = _Paths.login;
}

abstract class _Paths {
  _Paths._();
  static const home = '/home';
  static const signup = '/signup';
  static const config = '/config';
  static const element = '/element';
  static const login = '/login';
}
