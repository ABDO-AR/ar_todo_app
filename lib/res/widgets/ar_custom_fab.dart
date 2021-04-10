import 'package:ar_todo_app/res/values/colors_class.dart';
import 'package:flutter/material.dart';

class ARCustomFAB extends StatelessWidget {
  final Function onPressed;

  ARCustomFAB({this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        /// Don't Enable Color IN Container:
        //color: Colors.transparent,
        shape: BoxShape.circle,
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: ColorsClass.floatingActionButtonColor,
            blurRadius: 10,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: FloatingActionButton(
        // hoverColor: ColorsClass.checkBoxDividerColor3,
        // focusColor: ColorsClass.checkBoxDividerColor3,
        // foregroundColor: ColorsClass.checkBoxDividerColor3,
        splashColor: ColorsClass.checkBoxDividerColor3,
        backgroundColor: ColorsClass.checkBoxDividerColor3,
        highlightElevation: 0.0,
        elevation: 0.0,
        hoverElevation: 0.0,
        focusElevation: 0.0,
        disabledElevation: 0.0,
        onPressed: onPressed,
        child: Icon(
          Icons.add,
          size: 30.0,
          color: Colors.white,
        ),
      ),
    );
  }
}
