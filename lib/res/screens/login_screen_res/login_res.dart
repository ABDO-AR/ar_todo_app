import 'package:ar_todo_app/res/screens/home_screen_res/home_res.dart';
import 'package:ar_todo_app/res/screens/login_screen_res/login_constance.dart';
import 'package:ar_todo_app/res/screens/login_screen_res/widgets/ar_login_text_field.dart';
import 'package:ar_todo_app/res/strings/login_screen_strings/login_strings.dart';
import 'package:ar_todo_app/res/values/color_class.dart';
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
                        LoginScreenStrings.welcomeMassage1,
                        style: LoginScreenConstance.welcomeMassageTextStyle,
                      ),
                      Text(
                        LoginScreenStrings.welcomeMassage2,
                        style: LoginScreenConstance.welcomeMassageTextStyle,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: size.height / 3),
            ARLoginTextField(
              text: LoginScreenStrings.userNameHint,
              onChange: (String value) {},
            ),
            SizedBox(height: 10.0),
            ARLoginTextField(
              text: LoginScreenStrings.passwordHint,
              onChange: (String value) {},
            ),
            SizedBox(height: size.height / 4.3),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {},
                  child: Text(
                    LoginScreenStrings.signupMassage,
                    style: LoginScreenConstance.signupMassageTextStyle,
                  ),
                ),
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
                      LoginScreenStrings.loginMassage,
                      style: LoginScreenConstance.loginMassageTextStyle,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
