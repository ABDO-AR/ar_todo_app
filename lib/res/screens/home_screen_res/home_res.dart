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
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle.dark.copyWith(
        statusBarColor: Colors.transparent,
        systemNavigationBarDividerColor: Color(0xFF222222),
        systemNavigationBarColor: Color(0xFF222222),
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
      //AppBar:
      appBar: AppBar(
        title: Text('HomeScreen'),
        centerTitle: true,
      ),

      //Body:
      body: Container(
        //Width,Height:
        width: size.width,
        height: size.height,

        padding: EdgeInsets.all(8.0),

        //Child:
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('${ValuesClass.getHomeScreenDev(context, true).getCounter}'),
            SizedBox(height: 10.0),
            TextButton(
              onPressed: () {
                ValuesClass.getHomeScreenDev(context, false).addCounter();
              },
              child: Icon(
                Icons.add,
                size: 60.0,
                color: Colors.blue,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
