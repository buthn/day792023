import 'package:flutter/material.dart';

void main(){
  runApp(Task1());
}
class Task1 extends StatelessWidget {
  const Task1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StateExample(),
    );
  }
}

class StateExample extends StatefulWidget {
  const StateExample({super.key});

  @override
  State<StateExample> createState() => _StateExampleState();
}

class _StateExampleState extends State<StateExample> {
  int count =0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Day 3"),
        actions: [
          IconButton(onPressed: (){
            setState(() {
              count++;
            });
          }, icon: Icon(Icons.add)),

          IconButton(onPressed: (){
            setState(() {
              count--;
            });
          }, icon: Icon(Icons.minimize))
        ],
      ),
      body: Center(child: Text("$count")),
    );
  }
}

