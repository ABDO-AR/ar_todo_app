import 'package:ar_todo_app/res/screens/home_screen_res/home_res.dart';
import 'package:ar_todo_app/res/screens/signup_screen_res/signup_res.dart';
import 'package:flutter/material.dart';

class LoginScreenDev extends ChangeNotifier {
  void loginButton(BuildContext context) {
    Navigator.of(context)
        .pushNamedAndRemoveUntil(HomeScreenRes.id, (r) => false);
  }

  void signupScreenButton(BuildContext context) {
    Navigator.of(context)
        .pushNamedAndRemoveUntil(SignupScreenRes.id, (r) => false);
  }
}
