import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Login extends StatefulWidget {
  Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.all(30),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Hello Again!',
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              Text("Welcome back you've ", style: TextStyle(fontSize: 20)),
              SizedBox(
                height: 5,
              ),
              Text("been missed!", style: TextStyle(fontSize: 20)),
              SizedBox(
                height: 50,
              ),
              TextField(
                decoration: InputDecoration(
                  labelText: "Email",
                  filled: true,
                  fillColor: Colors.white,
                  contentPadding: EdgeInsets.all(20),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey, width: 0.0),
                      borderRadius: BorderRadius.circular(10)),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              TextField(
                decoration: InputDecoration(
                  labelText: "Password",
                  filled: true,
                  fillColor: Colors.white,
                  contentPadding: EdgeInsets.all(20),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey, width: 0.0),
                      borderRadius: BorderRadius.circular(10)),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Text('Forgot Passowrd?'),
              SizedBox(
                height: 50,
              ),
              Container(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Login',
                    style: TextStyle(fontSize: 18),
                  ),
                  style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(7),
                      ),
                      padding: EdgeInsets.all(12)),
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}
