import 'package:defunder/provider/apicolorquerityprovider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Apicolorquerity extends StatefulWidget {
  const Apicolorquerity({super.key});

  @override
  State<Apicolorquerity> createState() => _ApicolorquerityState();
}

class _ApicolorquerityState extends State<Apicolorquerity> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Provider.of<Apicolorquerityprovider>(context,listen: false).fatchingdata();
  }
  @override
  Widget build(BuildContext context) {
    final apicolorquerityprovider  = Provider.of<Apicolorquerityprovider>(context);
    return Scaffold(
      body: apicolorquerityprovider.abhishek.isEmpty?Center(child: CircularProgressIndicator(),):
      ListView.builder(
        itemCount: apicolorquerityprovider.abhishek.length,
        itemBuilder: (context,index){
        return Card(
          child: Column(
            children: [
                     Text("id ${apicolorquerityprovider.abhishek[index]['id']}"),
                     Text("name: ${apicolorquerityprovider.abhishek[index]['name']}"),
                     Text("data ${apicolorquerityprovider.abhishek[index]['data']['color']}${apicolorquerityprovider.abhishek[index]['data']['capacity']}"),
            ],
          ),                           //capacity
        );
      })
    );
  }
}