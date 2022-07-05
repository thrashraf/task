import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import './screen/Home.dart';
import './screen/Login.dart';
import './screen/Register.dart';

void main() {
  runApp(MaterialApp(
    //default routes
    initialRoute: '/login',

    theme: ThemeData(fontFamily: 'Poppins'),

    routes: {
      '/': (context) => Home(),
      '/login': (context) => Login(),
      '/register': (context) => Register(),
    },
  ));
}
