import 'package:counter_and_todo_list/Screens/counter_screen.dart';
import 'package:counter_and_todo_list/Screens/todo_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Data Management")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => CounterScreen()));
              },
              child: Text("Counter App"),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => TodoListScreen()));
              },
              child: Text("To-Do List App"),
            ),
          ],
        ),
      ),
    );
  }
}