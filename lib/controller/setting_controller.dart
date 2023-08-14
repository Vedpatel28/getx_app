import 'package:flutter/material.dart';

class settingProvider extends ChangeNotifier {
  bool theme = true;

  changeTheme() {
    theme = !theme;
    notifyListeners();
  }
}
