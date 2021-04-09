import 'package:ar_todo_app/res/screens/login_screen_res/login_constance.dart';
import 'package:flutter/material.dart';
import 'package:ar_todo_app/res/values/color_class.dart';

class ARCustomTextField extends StatelessWidget {
  final String text;
  final bool obscureText;
  final Function(String) onChange;

  ARCustomTextField({
    this.text,
    this.onChange,
    this.obscureText,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscureText,
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
