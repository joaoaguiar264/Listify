import 'package:flutter/material.dart';
import 'package:listify/views/HomePage.dart';


void main() {
  runApp(
    MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
    ),
  );
}


