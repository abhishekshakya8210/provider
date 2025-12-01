import 'package:flutter/material.dart';

class Oneselecter extends StatefulWidget {
  const Oneselecter({super.key});

  @override
  State<Oneselecter> createState() => _OneselecterState();
}

class _OneselecterState extends State<Oneselecter> {
  bool issecter = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [
            Container(
              height: 60,
              width: double.infinity,
              decoration: BoxDecoration(
                //color: Colors.amber
              ),
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          issecter = true;
                        });
                      },
                      child: Container(
                          height: 60,
                                    
                           decoration: BoxDecoration(
                          color:issecter?
                      
                           Colors.grey:
                           Colors.purple
                          ),
                      child: Center(child: Text('box 1',style: TextStyle(color: Colors.black),)),    
                      ),
                    ),
                  ),
                   Expanded(
                    child: GestureDetector(
                       onTap: () {
                        setState(() {
                          issecter = false;
                        });
                      },
                     
                      child: Container(
                          height: 60,
                                    
                           decoration: BoxDecoration(
                          color:issecter?
                           Colors.purple
                           :Colors.grey
                          ),
                           child: Center(child: Text('box 2',style: TextStyle(color: Colors.black),)),       
                      ),
                    ),
                  )

                ],
              ),
            )
        ],
      ),),
    );
  }
}