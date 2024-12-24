import 'package:flutter/material.dart';

class AppProvider extends ChangeNotifier {
  int _selectedIndex = 0;
  reset(){
    _selectedIndex = 0;
  }
  int get selectedIndex => _selectedIndex;

  set selectedIndex(int index) {
    _selectedIndex = index;
    notifyListeners();
  }

  bool _refresh = false;

  bool get refresh => _refresh;

  set refresh(bool value) {
    _refresh = value;
    notifyListeners();
  }
}