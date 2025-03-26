import 'package:counter_and_todo_list/Screens/home_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
   LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();

  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(      
      child: Scaffold(

        appBar: AppBar(
          title: Center(child: Text("Data Management App", style: TextStyle(color: Colors.white),)), 
          backgroundColor: Colors.blueAccent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(25))
          ),
        ),

        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Form(
              key: _formKey,           
              child: Column(
                children: [
                  Text("Login Page", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),
            
                  Image.asset("assets/login.png", width: 200, height: 200, fit: BoxFit.cover,),
            
                  SizedBox(height: 20,),
            
                  TextFormField(
                    controller: _emailController,
                    decoration: InputDecoration(
                      labelText: "Enter Email",
                      border: OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.blue))
                    ),
                    validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Email cannot be empty";
                        }
                        if (!RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}')
                            .hasMatch(value)) {
                          return "Enter a valid email";
                        }
                        return null;
                    },
                  ),
                        
                  SizedBox(height: 20,),
                        
                  TextFormField(
                    controller: _passwordController,
                    decoration: InputDecoration(
                      labelText: "Enter Password",
                                          
                      border: OutlineInputBorder(),                  
                      focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.blue))
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Password cannot be empty";
                      }
                      return null;
                    },
                  ),
            
                  SizedBox(height: 8,),
                  TextButton(
                    onPressed: (){
            
                    }, 
                    child: Text("Forgot Password?", style: TextStyle(color: Colors.black,),)
                  ),
            
                  //SizedBox(height:5,),
            
                  ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        Navigator.pushReplacement(
                          context, MaterialPageRoute(
                            builder: (context) => HomeScreen()
                          ),
                        );
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueAccent, // Blue background color
                      foregroundColor: Colors.white, // White text color for contrast
                      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12), // Button padding
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10), // Rounded corners
                      ),
                    ),
                    child: Text("Login", style: TextStyle(color: Colors.white),),                
                  )                          
                ],
              ),
            ),
          ),
        ),
    
      ),
    );
  }
}