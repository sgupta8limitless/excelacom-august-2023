import 'package:first_app/models/category_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
   HomePage({super.key});

  List<CategoryModel> categories=[];

  _getCategories()
  {
    categories=CategoryModel.getCategories();
  }

  @override
  Widget build(BuildContext context) {

    _getCategories();
    return Scaffold(
      appBar: appBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          searchBar(),
          SizedBox(height: 40,),
          Column(
            children: [
             Padding(
               padding: const EdgeInsets.only(left: 20),
               child: Text("Category",style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.w600),),
             ),
             SizedBox(height: 15,),
             Container(
              height: 120,
              // color: Colors.green,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: categories.length,
                separatorBuilder: (context, index) => SizedBox(width: 25,),
                padding: EdgeInsets.only(
                  left: 20,
                  right: 20
                ),
                itemBuilder: (context,index){
                return Container(
                  width: 100,
                  decoration: BoxDecoration(
                    color: categories[index].boxColor.withOpacity(0.6),
                    borderRadius: BorderRadius.circular(16)
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle
                        ),
                        child: categories[index].iconText,
                      ),
                      SizedBox(height: 10,),
                      Text(categories[index].name)
                    ],
                  ),
                );
              }),
             )
            ],
          )
        ],
      ),
    );
  }

  Container searchBar() {
    return Container(
          margin: const EdgeInsets.only(top: 40,left: 20,right: 20),
          decoration: BoxDecoration(
            boxShadow:[ BoxShadow(
              color: Color(0xff1d1617).withOpacity(0.11),
              blurRadius: 40,
              spreadRadius: 0.0
            ),
            ]
          ),
          child: TextField(
            
            decoration: InputDecoration(
              contentPadding: EdgeInsets.all(15),
              prefixIcon: Padding(
                padding: EdgeInsets.all(5),
                child: SvgPicture.asset('assets/icons/search.svg',width: 15,),
              ),
              filled: true,
              fillColor: Colors.white,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide.none
              )
            ),
          ),
        );
  }

  AppBar appBar() {
    return AppBar(
      title: Text("Breakfast",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
      centerTitle: true,
      backgroundColor: Colors.white,
      elevation: 0,
      leading: Container(
        child: SvgPicture.asset('assets/icons/back.svg'),
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Color(0xfff7f8f8),
          borderRadius: BorderRadius.circular(10)
        ),
      ),
      actions: [
         GestureDetector(
          onTap: (){
            print("hahah");
          },
           child: Container(
            child: SvgPicture.asset('assets/icons/back.svg'),
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Color(0xfff7f8f8),
              borderRadius: BorderRadius.circular(10)
            ),
                 ),
         ),
      ],
      );
  }
}