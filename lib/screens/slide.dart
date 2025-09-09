import 'package:defunder/provider/slideprovider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SlideScreen extends StatefulWidget {
  const SlideScreen({super.key});

  @override
  State<SlideScreen> createState() => _SlideScreenState();
}

class _SlideScreenState extends State<SlideScreen> {
  
  @override
  Widget build(BuildContext context) {
    final slideprovider = Provider.of<Slideprovider>(context);
    return Scaffold(
      appBar: AppBar(),
      body: Center(child: Column(
        children: [
          SizedBox(
            height: 100,
          ),
          Slider(value: (slideprovider.value), onChanged: (val){

       slideprovider.changevalue(val);

          }),
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 500,
                  color: Colors.green.withOpacity(slideprovider.value),
                  child: Center(child: Text('1')),
                ),
              ),
               Expanded(
                child: Container(
                  height: 500,
                  color: Colors.pink.withOpacity(slideprovider.value),
                  child: Center(child: Text('2')),
                ),
              ),
            ],
          )
        ],
      ),),
    );
  }
}