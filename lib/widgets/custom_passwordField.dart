import 'package:flutter/material.dart';

class passwordTextField extends StatefulWidget {
  String placeholder;

  passwordTextField({required this.placeholder});
  @override
  State<passwordTextField> createState() => _passwordTextFieldState();
}

class _passwordTextFieldState extends State<passwordTextField> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: TextFormField(
        obscureText: true,
        decoration: InputDecoration(
          labelText: widget.placeholder,
          filled: true,
          fillColor: Colors.white,
          contentPadding: EdgeInsets.all(20),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.transparent, width: 0.0),
              borderRadius: BorderRadius.circular(10)),
        ),
      ),
    );
  }
}
