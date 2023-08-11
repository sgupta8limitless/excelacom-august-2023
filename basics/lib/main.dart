// import 'package:basics/pages/base_screen.dart';
import 'package:basics/pages/counter.dart';
import 'package:basics/pages/list_tile_demo.dart';
import 'package:basics/pages/page_two.dart';
import 'package:flutter/material.dart';


void main() {
  runApp( const Main());
  }


class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Poppins',

      ),
      debugShowCheckedModeBanner: false,
      home: Counter()
    );
  }


}








