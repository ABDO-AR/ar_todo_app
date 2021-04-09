import 'package:ar_todo_app/dev/home_screen_dev/home_dev.dart';
import 'package:ar_todo_app/res/screens/home_screen_res/home_res.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => HomeScreenDev()),
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
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ARTODOAPP',
      theme: ThemeData.dark(),
      initialRoute: HomeScreenRes.id,
      routes: {
        HomeScreenRes.id: (context) => HomeScreenRes(),
      },
    );
  }
}
