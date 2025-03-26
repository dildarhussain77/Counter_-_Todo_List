import 'package:counter_and_todo_list/Screens/counter_screen.dart';
import 'package:counter_and_todo_list/Screens/todo_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blueAccent,
            
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.blueAccent, Colors.blue.shade200],
            ),
          ),
          child: SingleChildScrollView(
            child: Column(            
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 18.0, left: 18, right: 18),
                  child: Column(    
                    crossAxisAlignment: CrossAxisAlignment.start, // Aligns text to the left              
                    children: [
                      Text("Welcome!", style: TextStyle(color: Colors.white,fontSize: 29, fontWeight: FontWeight.bold),),            
                      Text("Manage Your Data Efficiently.\nStay Organized and Productive.", style: TextStyle(color: Colors.white,fontSize: 16,),),            
                      Center(child: Image.asset("assets/data.png", width: 250, height: 250, fit: BoxFit.cover,)),                                
                    ],
                  ),
                ),
          
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white, // Background color
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25), // Round top-left corner
                      topRight: Radius.circular(25), // Round top-right corner
                    ),                                                     
                  ),
          
                  width: double.infinity,        
                  height: double.infinity,
                  padding: EdgeInsets.only(top: 20, left: 10, right: 10),           
                  child: Column(
                    children: [
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        elevation: 5,
                        child: ListTile(
                          contentPadding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                          leading: Icon(Icons.exposure_plus_1, size: 40, color: Colors.blueAccent),
                          title: Text(
                            "Counter App",
                            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text("Keep a count of important events and activities."),
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => CounterScreen()));
                          },
                          trailing: Icon(Icons.arrow_forward_ios, color: Colors.blueAccent),
                        ),
                      ),
                      SizedBox(height: 15),
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        elevation: 5,
                        child: ListTile(
                          contentPadding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                          leading: Icon(Icons.list_alt, size: 40, color: Colors.green),
                          title: Text(
                            "To-Do List App",
                            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text("Manage and track your daily tasks efficiently."),
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => TodoListScreen()));
                          },
                          trailing: Icon(Icons.arrow_forward_ios, color: Colors.green),
                        ),
                      ),

                      SizedBox(height: 15),

                      //Bottom Text or Button
                      Text(
                        "More features coming soon!",
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.grey.shade600),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}