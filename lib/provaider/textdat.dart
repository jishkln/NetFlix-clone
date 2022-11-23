import 'package:flutter/foundation.dart';

class TextProvider extends ChangeNotifier {
  String _name = 'Hey';
  String get getName => _name;

  void changeName(String name) {
    _name = name;
    notifyListeners();
  }
}
