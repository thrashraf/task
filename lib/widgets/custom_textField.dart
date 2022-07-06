import 'package:flutter/material.dart';

class customTextField extends StatefulWidget {
  String placeholder;

  customTextField({required this.placeholder});
  @override
  State<customTextField> createState() => _customTextFieldState();
}

class _customTextFieldState extends State<customTextField> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: TextField(
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
