import 'package:flutter/material.dart';

class HomeScreenDev extends ChangeNotifier {
  int testCounter = 0;
  int get getCounter => testCounter;

  void addCounter() {
    testCounter++;
    notifyListeners();
  }
}
