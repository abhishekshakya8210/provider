import 'dart:convert';

import 'package:defunder/loginwithapiphoneotp/otpwithapi.dart';
import 'package:defunder/provider/loginwithphoneprovider.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';

class Loginwithphone extends StatefulWidget {
  const Loginwithphone({super.key});

  @override
  State<Loginwithphone> createState() => _LoginwithphoneState();
}

class _LoginwithphoneState extends State<Loginwithphone> {
 
  @override
  Widget build(BuildContext context) {
    final loginwithphoneprovider = Provider.of<Loginwithphoneprovider>(context);
    return Scaffold(
      appBar: AppBar(title: Text('login with phone'),),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(child: Form(
          key: loginwithphoneprovider.keyform,
          child: Column(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                
                controller: loginwithphoneprovider.phonecontroller,
                validator: (value) {
                  if(value==null||value.isEmpty){
                    return 'fill your number';
                  }
                 
                },
                maxLength: 10,
                decoration: InputDecoration(
                  hintText: 'phone',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20)
                  )
                ),
              ),
              SizedBox(height: 30,),
              ElevatedButton(onPressed: (){
                 if(loginwithphoneprovider.keyform.currentState!.validate()){
                    loginwithphoneprovider.login(loginwithphoneprovider.phonecontroller.text);
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Otpwithapi(phone: loginwithphoneprovider.phonecontroller.text)));
                  }
              },
          
              style: ElevatedButton.styleFrom(fixedSize: Size(300, 50),backgroundColor: Colors.purple,shape: RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(20))),
               child: Text('send otp',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white),))
              
            ],
          ),
        ),),
      ),
    );
  }
}