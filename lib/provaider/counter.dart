import 'package:flutter/foundation.dart';

class Counter extends ChangeNotifier {
  int _count = 0;

  int get getCount => _count;

  void incrementCount() {
    _count += 1;
    notifyListeners();
  }
}
