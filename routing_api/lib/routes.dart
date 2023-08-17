import 'package:flutter/material.dart';
import 'package:routing_api/screens/add_post_screen.dart';
import 'package:routing_api/screens/home_screen.dart';
import 'package:routing_api/screens/post_screen.dart';

class Routes 
{



  static Route? onGenerateRoute(RouteSettings settings)
  {
      switch(settings.name)
      {
        case "/home" : return MaterialPageRoute(
          builder: (context) => HomeScreen(),
        );

        case "/posts" : 
        Map<String,dynamic> arguments = settings.arguments as Map<String,dynamic>;
        
        return MaterialPageRoute(
          builder: (context) => PostScreen(title: arguments['title'],),
        );

        case "/addpost" : return MaterialPageRoute(
          builder: (context) => AddPostScreen(),
        );

        default : return null;

      }
  }
}