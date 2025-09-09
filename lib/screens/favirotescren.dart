import 'package:defunder/provider/faviroteprovider.dart';
import 'package:defunder/screens/myfavoriteScreen.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FaviroteScreen extends StatefulWidget {
  const FaviroteScreen({super.key});

  @override
  State<FaviroteScreen> createState() => _FaviroteScreenState();
}

class _FaviroteScreenState extends State<FaviroteScreen> {
  
  @override

  Widget build(BuildContext context) {
    final faviroteprovider = Provider.of<Faviroteprovider>(context);
    return Scaffold(

      appBar: AppBar(
        title: Text('Favirote Screen',style: TextStyle(fontSize: 25,color: 
        Colors.white,fontWeight: FontWeight.bold),
        ),
        actions: [GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=>MyFaviroteScreen()));
          },
          child: Icon(Icons.favorite,size: 30,color: Colors.red,))],
        backgroundColor: Colors.deepPurpleAccent,
        centerTitle: true,
      ),
      body: Center(child: Column(children: [
        Expanded(
          child: ListView.builder(
            itemCount: 100,
            itemBuilder: (context,index){
            return ListTile(
              onTap: () {
               faviroteprovider.selectvalue(index);
              },
            leading: Text("Iteams"+index.toString(),style: TextStyle(fontSize: 18,color: 
          Colors.blue,fontWeight: FontWeight.bold),),
          trailing: Icon(
            faviroteprovider.selectedindex.contains(index)?
            Icons.favorite
            :Icons.favorite_border_outlined
            ),
            );
          }),
        )
      ],)),
      );
    
  }
}