import 'dart:convert';

import 'package:http/http.dart';
import 'package:routing_api/models/post_model.dart';
import 'package:routing_api/repos/post_repo.dart';

class PostController
{

   static Future<List<PostModel>> getPosts() async{

      final response = await PostRepo.getPosts();

      final postsRaw = jsonDecode(response.body);

      List<PostModel> posts = [];

      for(dynamic postRaw in postsRaw)
      {
        posts.add(PostModel.fromJson(postRaw));
      }


      return posts;


  }

  static Future<String> createPost(Map<String,dynamic> post) async{

    
    final response = await PostRepo.createPost(post);

    if(response.statusCode>=200)
    {
      return "Post Created Successfully";
    }

    return "Some Problem";
    

  }


  


}


