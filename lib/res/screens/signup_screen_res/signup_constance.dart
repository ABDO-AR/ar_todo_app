import 'package:flutter/material.dart';

class SignupScreenConstance {
  static final TextStyle welcomeMassageTextStyle = TextStyle().copyWith(
    fontSize: 30.0,
    fontWeight: FontWeight.w700,
    color: Colors.white,
  );

  static final TextStyle loginMassageTextStyle = TextStyle().copyWith(
    fontSize: 30.0,
    fontWeight: FontWeight.w900,
    color: Colors.white,
  );

  static final TextStyle signupMassageTextStyle = TextStyle().copyWith(
    fontSize: 20.0,
    fontWeight: FontWeight.w900,
    color: Colors.white,
  );

  static final TextStyle textFilledLabelTextStyle = TextStyle().copyWith(
    fontSize: 20.0,
    color: Colors.white,
  );

  static final RoundedRectangleBorder loginButtonShape = RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(25.0),
    side: BorderSide.none,
  );

  static OutlineInputBorder textFilledBorder(Color color) => OutlineInputBorder(
        borderRadius: BorderRadius.circular(1000),
        borderSide: BorderSide(width: 1.0, color: color),
      );
}
