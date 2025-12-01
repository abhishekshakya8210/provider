import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Apicolorquerityprovider with ChangeNotifier{
  List abhishek = [];
  Future<void>fatchingdata()async{
    var response =  await http.get(Uri.parse('https://api.restful-api.dev/objects'));
    var data = jsonDecode(response.body);
    if(response.statusCode==200){
      abhishek = data;
      notifyListeners();
    }
  }
}