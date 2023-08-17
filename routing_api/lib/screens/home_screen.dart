import 'package:flutter/material.dart';
import 'package:routing_api/screens/post_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Home Screen"),
          backgroundColor: Colors.purple,
          actions: [
            Container(
              padding: EdgeInsets.all(20),
              child: GestureDetector(
                onTap: () {
                  // Navigator.push(context, MaterialPageRoute(
                  //   builder: (context) => PostScreen(),
                  // ));

                  Navigator.pushNamed(context, "/posts",arguments: {
                    "title":"User Data"
                  });


                },
                child: Icon(Icons.arrow_circle_right)
                ),
            )
          ],
          
        ),
        body: Center(
          child: Text("Home Page",style: TextStyle(fontSize: 20),),
        ),

      
      );
  }
}