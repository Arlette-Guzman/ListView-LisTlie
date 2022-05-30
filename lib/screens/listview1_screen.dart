import'package:flutter/material.dart';
class ListView1 extends StatelessWidget {

  var vengadores=["Thor", "Capitan America", "Iron Man", "BlackWidow"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
            title: Text("ListView1"),
            centerTitle: true,
          ),
          body:ListView(
                  children: [
                    ...vengadores.map(
                      (heroes)=>ListTile(
                        title: Text(heroes),
                        trailing: Icon(Icons.arrow_forward),
                        onTap: (){
                          print("Mensaje a consola");
                        },
                      )
                    )
                  ], 
                )
        );
  }
}