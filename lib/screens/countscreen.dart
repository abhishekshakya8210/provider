import 'package:defunder/provider/countprovider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CountScreen extends StatelessWidget {
  const CountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final countprovider = Provider.of<Countprovider>(context);
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){
        countprovider.increament();
      },child: Icon(Icons.add_a_photo),),
      body: Center(
        child: 
        Text(countprovider.count.toString(),style: TextStyle(fontSize: 30),),
      ),
    );
  }
}