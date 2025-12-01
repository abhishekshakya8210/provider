import 'dart:convert';

import 'package:defunder/loginwithapiphoneotp/otpwithapi.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Loginwithphoneprovider with ChangeNotifier{
   TextEditingController phonecontroller = TextEditingController();
  final keyform = GlobalKey<FormState>();
  void login(String phone)async{
    try{
      var response  = await http.post(Uri.parse('https://pathak-testing.onrender.com/api/otp/send'),
      headers: {
        "Content-Type":"application/json"
      },
      body: jsonEncode({
        "phone":phone,
      })

      );
      if(response.statusCode==200){
        print('login sussccefully ${response.body}');
        
        notifyListeners();
      }else{
        print('login exaptions ${response.body}');
      }

    }catch(e){
            print('login seirra ${e.toString()}');
    }
  }

}