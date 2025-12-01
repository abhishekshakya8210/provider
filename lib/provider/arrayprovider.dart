import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Arrayprovider with ChangeNotifier{
    List< dynamic>? abhishek;
  Future<void> Arraymodele()async{
    var response = await http.get(Uri.parse('https://fakestoreapi.com/carts'));
    var data =  jsonDecode(response.body);
    if(response.statusCode==200){
      
        abhishek  = data;
      notifyListeners();
    }

  }
}