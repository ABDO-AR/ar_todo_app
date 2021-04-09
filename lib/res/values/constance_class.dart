import 'package:flutter/material.dart';

class ConstanceClass {
  /// The Header Massage Style ON Login Screen:
  static final TextStyle welcomeMassageTextStyle = TextStyle().copyWith(
    fontSize: 30.0,
    fontWeight: FontWeight.w700,
    color: Colors.white,
  );

  /// The Login Screen Button Massage In Login & Signup Screen:
  static final TextStyle loginMassageTextStyle = TextStyle().copyWith(
    fontSize: 30.0,
    fontWeight: FontWeight.w900,
    color: Colors.white,
  );

  /// Signup Massage Style In Login Screen
  /// & Login Massage Style In Signup Screen See The Code To Understand:
  static final TextStyle signupMassageTextStyle = TextStyle().copyWith(
    fontSize: 20.0,
    fontWeight: FontWeight.w900,
    color: Colors.white,
  );

  /// The TextFiled Label Style:
  static final TextStyle textFilledLabelTextStyle = TextStyle().copyWith(
    fontSize: 20.0,
    color: Colors.white,
  );

  /// The Login/Signup Button Border Style:
  static final RoundedRectangleBorder loginButtonShape = RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(10.0),
    side: BorderSide.none,
  );

  /// The Border Function For Signup & Login Screen TextFiled:
  static OutlineInputBorder textFilledBorder(Color color) => OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.0),
        borderSide: BorderSide(width: 1.0, color: color),
      );
}
