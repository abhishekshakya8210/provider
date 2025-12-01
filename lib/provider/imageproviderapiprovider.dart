import 'dart:convert';

import 'package:defunder/model/imageproviderapimodel.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Imageproviderapiprovider with ChangeNotifier{
  List<dynamic> abhishek = [];
  Future<void>Imageproviderapimodel()async {
    var response  = await http.get(Uri.parse('https://fakestoreapi.com/products/'));
    if(response.statusCode==200){
      abhishek = jsonDecode(response.body);
      notifyListeners();
    }else{
      print('error');
    }
  }
}