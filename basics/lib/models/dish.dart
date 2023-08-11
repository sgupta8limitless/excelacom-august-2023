

import 'package:flutter/material.dart';

class Dish 
{

  String name;
  Color color;
  String icon;

  Dish({required this.name,required this.color,required this.icon});


  static List<Dish> getDishes()
  {
    List<Dish> dishes=[

      Dish(name: "Fruit", color: Color(0xfff5af84), icon:"assets/icons/fruit.svg" ),
      Dish(name: "Icecream", color: Color(0xfffffd94), icon: "assets/icons/icecream.svg"),
      Dish(name: "Chocolate", color: Color(0xfff5af84), icon:"assets/icons/chocolate.svg" ),
      Dish(name: "veggie", color: Color(0xfffffd94), icon: "assets/icons/veggie.svg")

    ];



    return dishes;
  }





}