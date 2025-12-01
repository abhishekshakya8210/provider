import 'package:defunder/model/imageproviderapimodel.dart';
import 'package:defunder/provider/imageproviderapiprovider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Imageproductapi extends StatefulWidget {
  const Imageproductapi({super.key});

  @override
  State<Imageproductapi> createState() => _ImageproductapiState();
}

class _ImageproductapiState extends State<Imageproductapi> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Provider.of<Imageproviderapiprovider>(context,listen: false).Imageproviderapimodel();
  }
  @override
  Widget build(BuildContext context) {
    final imageproviderapiprovider  = Provider.of<Imageproviderapiprovider>(context);
    return Scaffold(
      body:imageproviderapiprovider.abhishek.isEmpty?
      Center(child: CircularProgressIndicator(),):
      GridView.builder(gridDelegate:
       SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
         crossAxisSpacing: 10,
         mainAxisSpacing: 10,
         childAspectRatio: 0.5
         
        
        ),
         itemBuilder: (context,index){
          return Card(
            elevation: 5,
            child: Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20)
            ),
            child: Center(child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Container(
                    height: 130,
                    width: double.infinity,
                   decoration: BoxDecoration(
                     color: Colors.pink.shade100,
                     borderRadius: BorderRadius.circular(10),
                     image: DecorationImage(image: NetworkImage(imageproviderapiprovider.abhishek[index]['image'],),fit: BoxFit.contain)
                   ),
                  ),
                  Text(imageproviderapiprovider.abhishek[index]['title'],style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                    Padding(
                      padding: const EdgeInsets.only(right: 110),
                      child: Text(imageproviderapiprovider.abhishek[index]['price'].toString(),style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.grey),),
                    ),SizedBox(height: 5,),
                   // Text(imageproviderapiprovider.abhishek[index]['description'],style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold),),
                    Text(imageproviderapiprovider.abhishek[index]['category'],style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold),),
                  // Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                  //   children: [
                  //     SizedBox(height: 5,),
                  //     Icon(Icons.star,size: 50,color: Colors.amber,),
                  //     Text(imageproviderapiprovider.abhishek[index]['rating']['rate'].toString(),style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold),),
                  //   ],
                  // ),
                  
                ],
              ),
            ),),
            ),
          );
         }
         )
    );
  }
}