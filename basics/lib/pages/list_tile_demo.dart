import 'package:flutter/material.dart';

class ListTileDemo extends StatelessWidget {
   ListTileDemo({super.key});

   var restaurants=["Some place 1","Some place 2","Some Place 3","Some place 1","Some place 2","Some Place 3","Some place 1","Some place 2","Some Place 3","Some place 1","Some place 2","Some Place 3","Some place 1","Some place 2","Some Place 3","Some place 1","Some place 2","Some Place 3"];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: Text("List Tile Demo"),),
      body: Column(
        children: [
          Text("Some Header"),
          Expanded(
           
            child: ListView.builder(
              itemCount: restaurants.length,
              
              itemBuilder: (context,index){
                return ListTile(
                            leading: Icon(Icons.phone),
                            title: Text(restaurants[index]),
                            subtitle: Text("Some Location"),
                            trailing: Icon(Icons.menu),
                          );
          
            }),
          ),
        ],
      ),
    );
  }
}