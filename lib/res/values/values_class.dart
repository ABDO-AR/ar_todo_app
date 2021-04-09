import 'package:ar_todo_app/dev/home_screen_dev/home_dev.dart';
import 'package:ar_todo_app/dev/login_screen_dev/login_dev.dart';
import 'package:ar_todo_app/dev/signup_screen_dev/signup_dev.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

/// This Class Is For All Values:
class ValuesClass {
  static HomeScreenDev getHomeScreenDev(BuildContext context, bool listen) =>
      Provider.of<HomeScreenDev>(context, listen: listen);

  static LoginScreenDev getLoginScreenDev(BuildContext context, bool listen) =>
      Provider.of<LoginScreenDev>(context, listen: listen);

  static SignupScreenDev getSignupScreenDev(
          BuildContext context, bool listen) =>
      Provider.of<SignupScreenDev>(context, listen: listen);
}
