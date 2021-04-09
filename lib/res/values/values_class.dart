import 'package:ar_todo_app/dev/home_screen_dev/home_dev.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

/// This Class Is For All Values:
class Values {
  static HomeScreenDev getHomeScreenDev(BuildContext context, bool listen) =>
      Provider.of<HomeScreenDev>(context, listen: listen);
}
