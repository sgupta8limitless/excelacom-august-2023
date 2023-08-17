import 'package:flutter/material.dart';
import 'package:routing_api/routes.dart';
import 'package:routing_api/screens/home_screen.dart';
import 'package:routing_api/screens/post_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
       
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
     onGenerateRoute: Routes.onGenerateRoute,
     initialRoute: "/home",
     
    
    );
  }
}

