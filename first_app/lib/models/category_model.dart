

import 'package:flutter/material.dart';

class CategoryModel
{
  String name;
  Icon iconText;
  Color boxColor;

  CategoryModel({required this.name,required this.iconText,required this.boxColor});

  static List<CategoryModel> getCategories(){

    List<CategoryModel> categories=[];

    categories.add(
      CategoryModel(name: 'Salad', iconText: Icon(Icons.apple), boxColor: Color(0xff92a3fd))
    );

    categories.add(
      CategoryModel(name: 'Cake', iconText: Icon(Icons.cake), boxColor: Color(0xffc588f2))
    );

    categories.add(
      CategoryModel(name: 'Fruit', iconText: Icon(Icons.apple), boxColor: Color(0xff92a3fd))
    );

    categories.add(
      CategoryModel(name: 'Smoothies', iconText: Icon(Icons.phone), boxColor: Color(0xffc588f2))
    );

    return categories;

  }

}