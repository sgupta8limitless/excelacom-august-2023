import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {

  String message="Hello";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Counter"),),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(20),
            color: Colors.amber,
            child: Text(message),
          ),
          ElevatedButton(
            onPressed: (){
                setState(() {
                  message="Bye Bye";
                  
                });
            },
             child: Text("Click"),
             
            )
        ],
      ),
    );
  }
}