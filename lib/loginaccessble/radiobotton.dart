import 'package:flutter/material.dart';

class Radiobottonscreen extends StatefulWidget {
  const Radiobottonscreen({super.key});

  @override
  State<Radiobottonscreen> createState() => _RadiobottonscreenState();
}

class _RadiobottonscreenState extends State<Radiobottonscreen> {
  String ? isselected  = "male";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
              RadioListTile(
                title: Text('male'),
                value:"male" ,
                groupValue: isselected,
                onChanged: (value) {
                  setState(() {
                    isselected  =value;
                  });
                },),
                  RadioListTile(
                title: Text('femel'),
                value:"femel" ,
                groupValue: isselected,
                onChanged: (value) {
                  setState(() {
                    isselected  =value;
                  });
                },),
                 RadioListTile(
                title: Text('system'),
                value:"system" ,
                groupValue: isselected,
                onChanged: (value) {
                  setState(() {
                    isselected  =value;
                  });
                },)
          ],
        ),
      ),
    );
  }
}