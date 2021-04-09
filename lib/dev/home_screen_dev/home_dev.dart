import 'package:flutter/material.dart';

class HomeScreenDev extends ChangeNotifier {
  int testCounter = 0;

  void addCounter() {
    testCounter++;
    notifyListeners();
  }
}
