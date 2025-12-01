import 'package:flutter/material.dart';

class Checkboxscreen extends StatefulWidget {
  const Checkboxscreen({super.key});

  @override
  State<Checkboxscreen> createState() => _CheckboxscreenState();
}

class _CheckboxscreenState extends State<Checkboxscreen> {
  bool selestedindex =  false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Column(
        children: [
          Text("Qus 1.= PM modi is good leader in the world"),
             Row(
               children: [
                 Checkbox(
                  
                  value:selestedindex, 
                 onChanged: (value){
                  setState(() {
                    selestedindex = value!;
                  });
                 }),
                 SizedBox(width: 20,),
                 Text('thats right'),
                 
               ],
             ),
             Row(
               children: [
                 Checkbox(
                  
                  value:selestedindex, 
                 onChanged: (value){
                  setState(() {
                    selestedindex = value!;
                  });
                 }),
                 SizedBox(width: 20,),
                 Text('i thing you are wrong'),
                 
               ],
             ),
             Row(
               children: [
                 Checkbox(
                  
                  value:selestedindex, 
                 onChanged: (value){
                  setState(() {
                    selestedindex = value!;
                  });
                 }),
                 SizedBox(width: 20,),
                 Text('you are good opinian '),
                 
               ],
             ),
             Row(
               children: [
                 Checkbox(
                  
                  value:selestedindex, 
                 onChanged: (value){
                  setState(() {
                    selestedindex = value!;
                  });
                 }),
                 SizedBox(width: 20,),
                 Text('yes that good thounght'),
                 
               ],
             ),

        ],
      ),),
    );
  }
}

