import 'package:flutter/widgets.dart';

class Countprovider with ChangeNotifier{
  int count= 0;
  void increament(){
    count++;
    notifyListeners();
  }
}