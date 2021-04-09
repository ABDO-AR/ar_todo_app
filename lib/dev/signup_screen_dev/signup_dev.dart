import 'package:ar_todo_app/res/screens/home_screen_res/home_res.dart';
import 'package:ar_todo_app/res/screens/login_screen_res/login_res.dart';
import 'package:flutter/material.dart';

class SignupScreenDev extends ChangeNotifier {
  void signupButton(BuildContext context) {
    Navigator.of(context)
        .pushNamedAndRemoveUntil(HomeScreenRes.id, (r) => false);
  }

  void loginScreenButton(BuildContext context) {
    Navigator.of(context)
        .pushNamedAndRemoveUntil(LoginScreenRes.id, (r) => false);
  }
}
