import 'package:flutter/material.dart';
import 'package:routing_api/controllers/post_controller.dart';

class AddPostScreen extends StatelessWidget {
   AddPostScreen({super.key});

  final TextEditingController titleController = TextEditingController();
  final TextEditingController bodyController = TextEditingController();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Add Post Screen"),
          backgroundColor: Colors.purple,
          
        ),
        body: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Text("Add Post Screen",style: TextStyle(fontSize: 20),),

              TextField(
                controller: titleController,
                decoration: InputDecoration(
                  hintText: "Title"
                ),
              ),

              SizedBox(height: 30,),

               TextField(
                controller: bodyController,
                decoration: InputDecoration(
                  hintText: "Body"
                ),
              ),
               SizedBox(height: 30,),
              ElevatedButton(
                onPressed: () async {

                    Map<String,dynamic> post ={
                      "userId":1,
                      "id":1,
                      "title":titleController.text,
                      "body":bodyController.text
                    };

                  String message = await PostController.createPost(post);

                 final messageBar = SnackBar(
                  content: Text(message),
                  behavior: SnackBarBehavior.floating,
                  margin: EdgeInsets.all(10),
                  
                  );


                  ScaffoldMessenger.of(context).showSnackBar(messageBar);

                  // Navigator.pop(context);

                    // Navigator.pop(context,{"name":"Flutter"});



                },
                 child: Text("Create")
                ),
                SizedBox(height: 30,),
               
            ],
          ),
        ),
      );
  }

 


}