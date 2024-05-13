import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class bottomNavProvider extends ChangeNotifier {
  int _selectedindex = 0;

  int get currentindex {
    return _selectedindex;
  }

  void updatescreenindex(int newindex) {
    _selectedindex = newindex;

    notifyListeners();
  }
}
