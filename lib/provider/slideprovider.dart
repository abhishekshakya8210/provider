import 'package:flutter/material.dart';

class Slideprovider with ChangeNotifier{
  double value = 0.1;

  void changevalue (double val){
    value= val;
    notifyListeners();
  }
}