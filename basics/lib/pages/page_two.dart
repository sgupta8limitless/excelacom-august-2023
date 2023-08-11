import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../models/dish.dart';

class PageTwo extends StatelessWidget {
   PageTwo({super.key});


  List<Dish> dishes=[];

  getDishes()
  {
    dishes=Dish.getDishes();
  }

  var restaurants=["Some place 1","Some place 2","Some Place 3","Some place 1","Some place 2","Some Place 3","Some place 1","Some place 2","Some Place 3"];

  


  @override
  Widget build(BuildContext context) {
    getDishes();
    return Scaffold(
      appBar: AppBar(title: Text("Page Two",style: TextStyle(fontWeight: FontWeight.bold),),),
      body: ListView(
        children: [
          _searchField(),
          _dishesList(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
              padding: EdgeInsets.only(left: 20),
              child: Text("Popular Restaurants",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),)
              ),

              Column(
                children: [
                  for(int i=0;i<restaurants.length;i++)
                    ListTile(
                      leading: Icon(Icons.phone),
                      title: Text(restaurants[i]),
                      subtitle: Text("Some Location"),
                      trailing: Icon(Icons.menu),
                    )
                  
                  
                ],
              )

            //   Container(
            //      padding: EdgeInsets.only(left: 20),
            //      child: ListView.builder(
            //       itemCount: restaurants.length,
            //       itemBuilder: ((context, index) {
            //         return ListTile(
            //           leading: Icon(Icons.phone),
            //           title: Text(restaurants[index]),
            //           subtitle: Text("Some Location"),
            //           trailing: Icon(Icons.menu),
            //         );
            //       })
            //       ),
            //   )
            ],
          )

        ],
      )
    );
  }

  Container _searchField() {
    return Container(
          padding: const EdgeInsets.all(20),
          decoration: const BoxDecoration(
            boxShadow: 
            [BoxShadow(
              color: Color(0xffebe6e6),
              blurRadius: 40,
              spreadRadius: 0
            )
            ]
          ),
          child: const TextField(
          
            // obscureText: true,
            decoration: InputDecoration(
              
              filled: true,
              fillColor: Colors.white,
              hintText: "Search Food",
              contentPadding: EdgeInsets.all(15),
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.all(Radius.circular(10))

              ),
              prefixIcon: Icon(Icons.search),
              suffixIcon: Icon(Icons.filter)
            ),
          ),

          );
  }



  Column _dishesList() {
    return Column(
      
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.only(left: 20),
          child: Text("Popular Dishes",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),)
          ),
        Container(
          height: 170,
          padding: EdgeInsets.only(left: 20,top: 20,bottom: 20),
          child: ListView.separated(
            itemCount: dishes.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context,index){
              return Container(
               width: 110,
                decoration: BoxDecoration(
                  color: dishes[index].color
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(dishes[index].icon,height: 30,),
                    Text(dishes[index].name,style: TextStyle(fontSize: 20),),
                  ],
                ),
              );
            }, 
            separatorBuilder: (BuildContext context, int index) { 
              return SizedBox(width: 20,);
             },
            ),
        ),
      ],
    );
  }



}