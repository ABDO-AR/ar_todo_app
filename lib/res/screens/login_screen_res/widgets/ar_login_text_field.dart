import 'package:ar_todo_app/res/screens/login_screen_res/login_constance.dart';
import 'package:ar_todo_app/res/strings/login_screen_strings/login_strings.dart';
import 'package:flutter/material.dart';
import 'package:ar_todo_app/res/values/color_class.dart';

class ARLoginTextField extends StatelessWidget {
  final String text;
  final Function(String) onChange;

  ARLoginTextField({
    this.text,
    this.onChange,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onChange,
      cursorColor: ColorClass.loginScreenYellowColor,
      decoration: InputDecoration(
        labelText: text,
        labelStyle: LoginScreenConstance.textFilledLabelTextStyle,
        fillColor: ColorClass.loginScreenYellowColor,
        focusColor: ColorClass.loginScreenYellowColor,
        hoverColor: ColorClass.loginScreenYellowColor,
        focusedBorder: LoginScreenConstance.textFilledBorder(
          ColorClass.loginScreenYellowColor,
        ),
        enabledBorder: LoginScreenConstance.textFilledBorder(
          Colors.grey,
        ),
      ),
    );
  }
}
