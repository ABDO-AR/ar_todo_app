import 'package:ar_todo_app/res/values/constance_class.dart';
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
      cursorColor: ColorClass.mainLoginScreenWidgetsColor,
      decoration: InputDecoration(
        labelText: text,
        labelStyle: ConstanceClass.textFilledLabelTextStyle,
        fillColor: ColorClass.mainLoginScreenWidgetsColor,
        focusColor: ColorClass.mainLoginScreenWidgetsColor,
        hoverColor: ColorClass.mainLoginScreenWidgetsColor,
        focusedBorder: ConstanceClass.textFilledBorder(
          ColorClass.mainLoginScreenWidgetsColor,
        ),
        enabledBorder: ConstanceClass.textFilledBorder(
          Colors.grey,
        ),
      ),
    );
  }
}
