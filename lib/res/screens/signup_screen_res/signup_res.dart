import 'package:ar_todo_app/res/values/color_class.dart';
import 'package:ar_todo_app/res/values/constance_class.dart';
import 'package:ar_todo_app/res/values/strings_class.dart';
import 'package:ar_todo_app/res/values/values_class.dart';
import 'package:ar_todo_app/res/widgets/ar_custom_text_field.dart';
import 'package:flutter/material.dart';

class SignupScreenRes extends StatefulWidget {
  static const String id = 'SignupScreenRes_ID';
  static const String public_id = 'SignupScreenRes_PUBLIC_ID';

  @override
  _SignupScreenResState createState() => _SignupScreenResState();
}

class _SignupScreenResState extends State<SignupScreenRes> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    ThemeData themeData = Theme.of(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      //Body:
      body: Container(
        //Width,Height:
        width: size.width,
        height: size.height,

        /// Background:
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('lib/res/images/background.png'),
            fit: BoxFit.cover,
          ),
        ),

        padding: EdgeInsets.all(20.0),

        //Child:
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            /// Welcome Text:
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        StringsClass.welcomeSignupMassage1,
                        style: ConstanceClass.welcomeMassageTextStyle,
                      ),
                      Text(
                        StringsClass.welcomeSignupMassage2,
                        style: ConstanceClass.welcomeMassageTextStyle,
                      ),
                    ],
                  ),
                ],
              ),
            ),

            /// Welcome Text ^^^

            /// The Height Between Welcome Text & TextFields:
            SizedBox(height: size.height / 4),

            /// UserName TextField:
            ARCustomTextField(
              text: StringsClass.userNameHint,
              obscureText: false,
              onChange: (String value) {},
            ),
            SizedBox(height: 10.0),

            /// UserName TextFiled ^^^
            /// userEmail TextFiled:
            ARCustomTextField(
              text: StringsClass.emailHint,
              obscureText: false,
              onChange: (String value) {},
            ),

            /// userEmail TextFiled ^^^
            SizedBox(height: 10.0),

            /// Password TextFiled:
            ARCustomTextField(
              text: StringsClass.passwordHint,
              obscureText: true,
              onChange: (String value) {},
            ),

            /// Password TextFiled ^^^
            SizedBox(height: size.height / 5.2),

            /// This Is The Bottom Row Include Signup & Login TextButton:
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                /// Signup TextButton:
                TextButton(
                  onPressed: () {
                    ValuesClass.getSignupScreenDev(context, false)
                        .loginScreenButton(context);
                  },
                  child: Text(
                    StringsClass.loginMassage,
                    style: ConstanceClass.signupMassageTextStyle,
                  ),
                ),

                /// Signup TextButton ^^^
                /// Login TextButton:
                SizedBox(
                  width: 160.0,
                  child: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: ColorClass.loginScreenYellowColor,
                      shape: ConstanceClass.loginButtonShape,
                    ),
                    onPressed: () {
                      ValuesClass.getSignupScreenDev(context, false)
                          .signupButton(context);
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Text(
                        StringsClass.signupMassage,
                        style: ConstanceClass.loginMassageTextStyle,
                      ),
                    ),
                  ),
                ),

                /// Login TextButton ^^^
              ],
            ),
          ],
        ),
      ),
    );
  }
}
