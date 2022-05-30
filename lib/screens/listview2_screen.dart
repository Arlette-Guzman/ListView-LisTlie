import'package:flutter/material.dart';
class ListView2 extends StatelessWidget {

   var vengadores=["Thor",
    "Capitan America", 
    "Iron Man", 
    "BlackWidow"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
            title: Text("ListView2"),
            centerTitle: true,
          ),
          body:ListView.separated(

            separatorBuilder: (_,__)=>Divider(),
            itemCount: vengadores.length,
            itemBuilder: (context, index)=>ListTile(
              title: Text(vengadores[index]),
                        trailing: Icon(
                        Icons.arrow_forward,
                        color: Colors.red,),
                        onTap: (){
                          print("Mensaje a consola 2");
                        },
            ), 
           
            )
        );
  }
}