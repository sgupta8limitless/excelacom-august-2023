import 'package:flutter/material.dart';
import 'package:routing_api/controllers/post_controller.dart';


class PostScreen extends StatefulWidget {

  final String title;
  
  const PostScreen({super.key,required this.title});

  @override
  State<PostScreen> createState() => _PostScreenState();
}



class _PostScreenState extends State<PostScreen> {

 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Post Screen"),
          backgroundColor: Colors.purple,
          actions: [
            // Container(
            //   padding: EdgeInsets.all(20),
            //   child: GestureDetector(
            //     onTap: () {
            //       // Navigator.push(context, MaterialPageRoute(
            //       //   builder: (context) => PostScreen(),
            //       // ));

            //       Navigator.pushNamed(context, "/addpost");


            //     },
            //     child: Icon(Icons.arrow_circle_right)
            //     ),
            // )

            Container(
              padding: EdgeInsets.all(5),
              child: IconButton(
                onPressed: () async {

                   var data = await Navigator.pushNamed(context, "/addpost",);
                  print(data);
                   
                },
                 icon: Icon(Icons.arrow_right)
                 ),
            )

          ],
          
        ),
        body: FutureBuilder(
          future: PostController.getPosts(),
          builder: (context, snapshot) {

              if(snapshot.data==null)
              {
                return Center(child: CircularProgressIndicator(),);
              }

              final posts = snapshot.data!;

              return ListView.builder(
                itemCount: posts.length,
                itemBuilder: (context, index) {

                    return Container(
                      margin: EdgeInsets.all(10),
                      color: Colors.grey,
                      child: Column(
                        children: [
                          Text(posts[index].title,style: TextStyle(fontWeight: FontWeight.bold),),
                          Text(posts[index].body)
                        ],
                      ),
                    );

                },
              );

          },
          ),
      );
  }
}


