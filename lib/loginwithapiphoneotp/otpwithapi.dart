import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:http/http.dart' as http;

class Otpwithapi extends StatefulWidget {
  String phone;
   Otpwithapi({super.key,required this.phone});

  @override
  State<Otpwithapi> createState() => _OtpwithapiState();
}

class _OtpwithapiState extends State<Otpwithapi> {
  TextEditingController otpcontroller = TextEditingController();
  final keyform = GlobalKey<FormState>();
  void otpscreen(String phone,String otp)async{
    try{
      var response  = await http.post(Uri.parse('https://pathak-testing.onrender.com/api/otp/verify'),
      headers: {
        "Content-Type":"application/json"
      },
      body: jsonEncode({
        "phone":phone,
        "otp":otpcontroller.text,
      })

      );
      if(response.statusCode==200){
        print('submited sussccefully ${response.body}');
       
      }else{
        print('otp exaptions ${response.body}');
      }

    }catch(e){
            print('catch seirra ${e.toString()}');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('login with phone'),),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(child: Form(
          key: keyform,
          child: Column(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              
                OtpTextField(
        numberOfFields: 4,
        borderColor: Color(0xFF512DA8),
        //set to true to show as box or false to show as dash
        showFieldAsBox: true, 
        //runs when a code is typed in
        onCodeChanged: (String code) {
            //handle validation or checks here           
        },
        //runs when every textfield is filled
        onSubmit: (String verificationCode){
           otpcontroller.text  = verificationCode;
        }, // end onSubmit
    ),

           


              SizedBox(height: 30,),
              ElevatedButton(onPressed: (){
                 if(keyform.currentState!.validate()){
                  otpscreen(widget.phone, otpcontroller.text);
                    
                  }
              },
          
              style: ElevatedButton.styleFrom(fixedSize: Size(300, 50),backgroundColor: Colors.purple,shape: RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(20))),
               child: Text('Submit',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white),))
              
            ],
          ),
        ),),
      ),
    );
  }
}