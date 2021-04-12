import 'package:ar_todo_app/res/values/colors_class.dart';
import 'package:ar_todo_app/res/values/constance_class.dart';
import 'package:ar_todo_app/res/values/strings_class.dart';
import 'package:ar_todo_app/res/values/values_class.dart';
import 'package:ar_todo_app/res/widgets/ar_custom_fab.dart';
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
      /// C_TODO: We Have To Make Custom AppBar With Preferred Size.
      // AppBar:
      appBar: AppBar(
        actions: [
          IconButton(
            icon: Icon(
              Icons.search,
              color: ColorsClass.headerIconsColor,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.logout,
              color: ColorsClass.headerIconsColor,
            ),
            onPressed: () {},
          ),
        ],
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            color: ColorsClass.headerIconsColor,
          ),
          onPressed: () {},
        ),
        elevation: 0.0,
        backgroundColor: ColorsClass.mainHomeScreenBackgroundColor,
      ),

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
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '${StringsClass.welcomeMassage}',
                style: ConstanceClass.loginMassageTextStyle,
              ),
              SizedBox(height: 30),
              Text(
                StringsClass.categorisesMassage.toUpperCase(),
                style: ConstanceClass.categorisesMassageTextStyle,
              ),
              SizedBox(height: 8.0),
              SizedBox(
                height: size.height / 5,
                child: Expanded(
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (BuildContext context, int index) {
                      return Card(
                        elevation: 0.9,
                        shadowColor: Colors.black,
                        color: ColorsClass.mainHomeScreenWidgetsColor,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('DemoList'),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),

      floatingActionButton: ARCustomFAB(
        onPressed: () {},
      ),
    );
  }
}
