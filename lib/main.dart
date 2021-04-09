import 'package:ar_todo_app/dev/home_screen_dev/home_dev.dart';
import 'package:ar_todo_app/dev/login_screen_dev/login_dev.dart';
import 'package:ar_todo_app/res/screens/home_screen_res/home_res.dart';
import 'package:ar_todo_app/res/screens/login_screen_res/login_res.dart';
import 'package:ar_todo_app/res/values/color_class.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => HomeScreenDev()),
        ChangeNotifierProvider(create: (_) => LoginScreenDev()),
      ],
      child: ARTODOAPP(),
    ),
  );
}

/// The App Start From Here.
class ARTODOAPP extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    /// Set The System States, Navigation Bar Color
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle.dark.copyWith(
        statusBarColor: Colors.transparent,
        systemNavigationBarDividerColor: ColorClass.loginScreenBlueDarkColor,
        systemNavigationBarColor: ColorClass.loginScreenBlueDarkColor,
        systemNavigationBarIconBrightness: Brightness.dark,
        statusBarIconBrightness: Brightness.dark,
        statusBarBrightness: Brightness.dark,
      ),
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ARTODOAPP',
      theme: ThemeData.dark(),
      initialRoute: LoginScreenRes.id,
      routes: {
        HomeScreenRes.id: (context) => HomeScreenRes(),
        LoginScreenRes.id: (context) => LoginScreenRes(),
      },
    );
  }
}
