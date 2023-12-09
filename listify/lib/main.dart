import 'package:flutter/material.dart';
import 'package:listify/components/CreateAd.dart';
import 'package:listify/views/HomePage.dart';


void main() {
  runApp(
    MaterialApp(
      home: CreateAd(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
    ),
  );
}


