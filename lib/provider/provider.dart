import 'package:flutter/material.dart';

class CounterProvider with ChangeNotifier {
  int _counter = 0;

// getter
  int get counter => _counter;

// setter
  void increment() {
    _counter++;
    notifyListeners();
  }
}
