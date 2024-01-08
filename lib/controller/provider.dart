import 'package:flutter/material.dart';

class name extends ChangeNotifier {
  String text1 = '';
  String text2 = '';
  String get textSum => '$text1$text2';

  void change1(String newValue) {
    text1 = newValue;
    notifyListeners();
  }

  void change2(String newValue) {
    text2 = newValue;
    notifyListeners();
  }
}
