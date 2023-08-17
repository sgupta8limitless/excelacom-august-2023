import 'package:http/http.dart' as http;
import 'dart:convert';

class PostRepo
{

  static Future<http.Response> getPosts() async
  {

    var url= Uri.parse("https://jsonplaceholder.typicode.com/posts/");
    final response=await http.get(url);

    return response;

  }


  static Future<http.Response> createPost(Map<String,dynamic> post) async
  {
      var url = Uri.parse("https://jsonplaceholder.typicode.com/posts/");

     final response = await  http.post(url,body: jsonEncode(post));

     return response;

  }

}