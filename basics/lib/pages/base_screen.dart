import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BaseScreen extends StatelessWidget {
  const BaseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: _appBar(),
        body: mainBody(),
      );
  }

  
  AppBar _appBar() {
    return AppBar(
        title: const Text("To Do App",style: TextStyle(
          color: Colors.black
        ),),
        // elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: GestureDetector(
          onTap: (){
            print("back clicked");
          },
          child: Container(
             child: SvgPicture.asset('assets/icons/back.svg'),
            
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Color(0xfff7faf8),
              borderRadius: BorderRadius.all(Radius.circular(10))
              
            ),
            
          ),
        ),

        actions: [
          GestureDetector(
            onTap: () {
              print("Clicked");
            },
            child: Container(
              width: 30,
            child: SvgPicture.asset('assets/icons/user.svg'),
            padding: EdgeInsets.all(4),
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.all(Radius.circular(10))
              
            ),
            
                  ),
          ),
        Container(
          child: SvgPicture.asset('assets/icons/menu.svg'),
          padding: EdgeInsets.all(4),
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.amber,
            borderRadius: BorderRadius.all(Radius.circular(10))
            
          ),
          
        )
        ],
        
      );
  }






  Column mainBody() {
    return Column(
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        // crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            height: 200,
            width: 300,
            // color: Colors.amber,
            decoration: BoxDecoration(
              // border: Border.all(color: Colors.black,width: 2),
              color: Colors.amber,
              borderRadius: BorderRadius.circular(15),
              boxShadow: const [
                BoxShadow(
                color: Colors.grey,
                blurRadius: 30,
                spreadRadius: 0
              )
              ]
              
            ),

            child: Row(
              children: [
                Icon(Icons.mail),
                Image.asset('assets/images/fb-img.png',width: 20,),
                SvgPicture.asset('assets/icons/twitter.svg',width: 20,)
              ],
            ),
            
          ),
          SizedBox(height: 30,),
          Container(
            height: 200,
            width: 300,
            color: Colors.green,
            child: Image.asset('assets/images/image1.jpg'),
          ),
          SizedBox(height: 10,),
          Container(
            height: 200,
            width: 300,
            color: Colors.blue,
            child: Image.network("https://c4.wallpaperflare.com/wallpaper/731/1010/381/virginia-falls-a-small-mountain-river-bed-karpessto-tree-nature-in-high-resolution-wallpaper-preview.jpg"),
          ),
          Container(
             width:50,
            height: 50,
           decoration: const BoxDecoration(
              color: Colors.red,
              // borderRadius: BorderRadius.all(Radius.circular(25))
              shape: BoxShape.circle
            ),
          )
        ],
      );
  }
}











