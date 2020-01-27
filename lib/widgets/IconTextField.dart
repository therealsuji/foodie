import 'package:flutter/material.dart';

class IconTextField extends StatelessWidget {
  IconTextField({this.icon,this.hintText,this.sink});
  IconData icon;
  String hintText;
  Sink sink;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10)
      ),
      child: TextField(
        onChanged: (value)=>sink.add(value),
        decoration: InputDecoration(
          prefixIcon: Icon(icon),
            border: InputBorder.none, hintText:hintText),
      ),
    );
  }

}
