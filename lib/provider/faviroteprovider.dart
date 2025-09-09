import 'package:flutter/material.dart';

class Faviroteprovider with ChangeNotifier {
  List<int> selectedindex = [];

  void selectvalue(int value) {
    if (!selectedindex.contains(value)) {
      selectedindex.add(value);  // add item
      notifyListeners();
    }
  }

  void selectremove(int remove) {
    if (selectedindex.contains(remove)) {
      selectedindex.remove(remove); // remove item
      notifyListeners();
    }
  }
}
