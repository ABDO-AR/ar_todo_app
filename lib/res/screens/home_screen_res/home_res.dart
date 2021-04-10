import 'package:ar_todo_app/res/values/colors_class.dart';
import 'package:ar_todo_app/res/values/values_class.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomeScreenRes extends StatefulWidget {
  static const String id = 'HomeScreenRes_ID';
  static const String public_id = 'HomeScreenRes_PUBLIC_ID';

  @override
  _HomeScreenResState createState() => _HomeScreenResState();
}

class _HomeScreenResState extends State<HomeScreenRes> {
  @override
  void initState() {
    /// Change The Colors To Be More Good With Home Screen:
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle.dark.copyWith(
        statusBarColor: Colors.transparent,
        systemNavigationBarDividerColor:
            ColorsClass.mainHomeScreenBackgroundColor,
        systemNavigationBarColor: ColorsClass.mainHomeScreenBackgroundColor,
        systemNavigationBarIconBrightness: Brightness.dark,
        statusBarIconBrightness: Brightness.dark,
        statusBarBrightness: Brightness.dark,
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    ThemeData themeData = Theme.of(context);
    return Scaffold(
      /// TODO: We Have To Make Custom AppBar With Preferred Size.
      //AppBar:
      // appBar: AppBar(
      //   title: Text('HomeScreen'),
      //   backgroundColor: ColorsClass.mainHomeScreenBackgroundColor,
      //   centerTitle: true,
      // ),

      //Body:
      body: Container(
        //Width,Height:
        width: size.width,
        height: size.height,

        padding: EdgeInsets.all(8.0),

        decoration: BoxDecoration(
          color: ColorsClass.mainHomeScreenBackgroundColor,
        ),

        //Child:
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [],
        ),
      ),
    );
  }
}
