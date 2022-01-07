import 'package:flutter/material.dart';

Widget buttonArrowCard(IconData icon){
  return Card(
    elevation: 0,
    color: Colors.white,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(5),
    ),
    child: Padding(
      padding:  const EdgeInsets.all(5.0),
      child: Icon(icon,
        size: 15, color: Colors.black,
      ),
    ),
  );
}

