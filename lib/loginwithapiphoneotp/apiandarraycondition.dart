import 'dart:convert';

import 'package:defunder/provider/arrayprovider.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';

class Apiandarraycondition extends StatefulWidget {
  const Apiandarraycondition({super.key});

  @override
  State<Apiandarraycondition> createState() => _ApiandarrayconditionState();
}

class _ApiandarrayconditionState extends State<Apiandarraycondition> {


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Provider.of<Arrayprovider>(context,listen: false).Arraymodele();
  }
  @override
  Widget build(BuildContext context) {
    final arrayprovider = Provider.of<Arrayprovider>(context);
    return Scaffold(
      body: arrayprovider.abhishek==null?Center(child: CircularProgressIndicator(),)
      : ListView.builder(
        itemCount: arrayprovider.abhishek?.length,
        itemBuilder: (context,index){
        return Card(
          child: Column(
            children: [
                    Text(arrayprovider.abhishek![index]['id'].toString()),
                      Text(arrayprovider.abhishek![index]['userId'].toString()),
                        Text(arrayprovider.abhishek![index]['products'][0]['productId'].toString()),
                       Text(arrayprovider.abhishek![index]['products'][0]['quantity'].toString()),


                               //quantity
            ],
          ),
        );
      })
    );
  }
}