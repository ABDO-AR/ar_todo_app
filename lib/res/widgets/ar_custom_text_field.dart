import 'package:ar_todo_app/res/values/constance_class.dart';
import 'package:flutter/material.dart';
import 'package:ar_todo_app/res/values/colors_class.dart';

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
      cursorColor: ColorsClass.mainLoginScreenWidgetsColor,
      decoration: InputDecoration(
        labelText: text,
        labelStyle: ConstanceClass.textFilledLabelTextStyle,
        fillColor: ColorsClass.mainLoginScreenWidgetsColor,
        focusColor: ColorsClass.mainLoginScreenWidgetsColor,
        hoverColor: ColorsClass.mainLoginScreenWidgetsColor,
        focusedBorder: ConstanceClass.textFilledBorder(
          ColorsClass.mainLoginScreenWidgetsColor,
        ),
        enabledBorder: ConstanceClass.textFilledBorder(
          Colors.grey,
        ),
      ),
    );
  }
}
