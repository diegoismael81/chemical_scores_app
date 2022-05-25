import 'package:chemical_scores_app/app/routes/app_pages.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthController extends GetxController {
  final _isObscureText = true.obs;

  @override
  void onClose() {}

  void onShowPassword() {
    _isObscureText.value = !_isObscureText.value;
  }

  bool get isObscureText {
    return _isObscureText.value;
  }

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  final TextEditingController loginEmailController = TextEditingController();
  final TextEditingController loginPasswordController = TextEditingController();

  bool get isEmailValue {
    return GetUtils.isEmail(emailController.text.toString());
  }

  bool get isValitedForm {
    return isEmailValue && passwordController.value.toString() != "";
  }

  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<void> createAccount() async {
    final user = await _auth.createUserWithEmailAndPassword(
        email: emailController.text, password: passwordController.text);
    final firestore = FirebaseFirestore.instance;
    firestore.collection('users').doc(user.user!.uid).set(
        {"email": emailController.text, "password": passwordController.text});
    if (user != null) {
      Get.toNamed(Routes.login);
    } else {
      print('error');
    }
  }

  Future<void> loginUser() async {
    final user = await _auth.signInWithEmailAndPassword(
        email: loginEmailController.text,
        password: loginPasswordController.text);
    if (user != null) {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      prefs.setString("userID", user.user!.uid);
      print(user.user!.uid);
      Get.toNamed(Routes.home);
    } else {
      print('error');
    }
  }

  Future<void> logoutUser() async {
    await _auth.signOut();
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.clear();
    Get.offAll(Routes.login);
  }
}
