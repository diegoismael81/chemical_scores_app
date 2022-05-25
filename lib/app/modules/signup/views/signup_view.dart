import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../controllers/auth_controller.dart';

class SignupView extends GetView<AuthController> {
  const SignupView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final designBorder = OutlineInputBorder(
        borderRadius: BorderRadius.circular(7.0),
        borderSide: BorderSide(color: Theme.of(context).dividerColor));

    return SafeArea(
        child: Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(35.0),
            child:
                Text("Sign Up", style: Theme.of(context).textTheme.headline4),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
            child: Obx(
              () => Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          enabledBorder: designBorder,
                          focusedBorder: designBorder,
                          icon: const Icon(Icons.alternate_email),
                          labelText: "Email",
                          hintText: "user@chemical.org")),
                  const SizedBox(height: 14.0),
                  TextFormField(
                      obscureText: controller.isObscureText,
                      decoration: InputDecoration(
                          enabledBorder: designBorder,
                          focusedBorder: designBorder,
                          suffixIcon: IconButton(
                              onPressed: () => controller.onShowPassword(),
                              icon: Icon(
                                controller.isObscureText
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                              )),
                          icon: const Icon(Icons.lock),
                          labelText: "Password")),
                  Padding(
                    padding: const EdgeInsets.only(top: 30.0),
                    child: ElevatedButton.icon(
                        onPressed: null,
                        icon: const Icon(Icons.login),
                        label: const Text("Register")),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
