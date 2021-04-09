import 'package:ar_todo_app/res/screens/home_screen_res/home_res.dart';
import 'package:ar_todo_app/res/screens/login_screen_res/login_constance.dart';
import 'package:ar_todo_app/res/values/color_class.dart';
import 'package:ar_todo_app/res/values/strings_class.dart';
import 'package:ar_todo_app/res/widgets/ar_custom_text_field.dart';
import 'package:flutter/material.dart';

class LoginScreenRes extends StatefulWidget {
  static const String id = 'LoginScreenRes_ID';
  static const String public_id = 'LoginScreenRes_PUBLIC_ID';

  @override
  _LoginScreenResState createState() => _LoginScreenResState();
}

class _LoginScreenResState extends State<LoginScreenRes> {
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
                        StringsClass.welcomeMassage1,
                        style: LoginScreenConstance.welcomeMassageTextStyle,
                      ),
                      Text(
                        StringsClass.welcomeMassage2,
                        style: LoginScreenConstance.welcomeMassageTextStyle,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            /// Welcome Text ^^^
            SizedBox(height: size.height / 3),
            /// UserName TextField:
            ARCustomTextField(
              text: StringsClass.userNameHint,
              obscureText: false,
              onChange: (String value) {},
            ),
            SizedBox(height: 10.0),
            /// UserName TextFiled ^^^
            /// Password TextFiled:
            ARCustomTextField(
              text: StringsClass.passwordHint,
              obscureText: true,
              onChange: (String value) {},
            ),
            /// Password TextFiled ^^^
            SizedBox(height: size.height / 4.3),
            /// This Is The Bottom Row Include Signup & Login TextButton:
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                /// Signup TextButton:
                TextButton(
                  onPressed: () {},
                  child: Text(
                    StringsClass.signupMassage,
                    style: LoginScreenConstance.signupMassageTextStyle,
                  ),
                ),
                /// Signup TextButton ^^^
                /// Login TextButton:
                SizedBox(
                  width: 160.0,
                  child: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: ColorClass.loginScreenYellowColor,
                      shape: LoginScreenConstance.loginButtonShape,
                    ),
                    onPressed: () {
                      Navigator.of(context).pushNamed(HomeScreenRes.id);
                    },
                    child: Text(
                      StringsClass.loginMassage,
                      style: LoginScreenConstance.loginMassageTextStyle,
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
