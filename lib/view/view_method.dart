import 'package:flutter/material.dart';

class ViewMethod {
  static const hijau_muda = Colors.lightGreen;
  static const hijau = Colors.green;
  static const ungu = Colors.purple;
  static const pink = Colors.pink;
  static const biru = Colors.blue;

  static Container garis(Color color) {
    return Container(
      margin: EdgeInsets.all(20),
      width: 500,
      height: 5,
      color: color,
    );
  }

  static Container edit(TextEditingController controller, String s) {
    return Container(
      width: 100,
      height: 40,
      child: TextField(cursorColor: Colors.white,
        decoration: InputDecoration(
            hintText: s,
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(4))),
        controller: controller,
      ),
    );
  }
}
