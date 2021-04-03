import 'package:Materioteca_Flutter/HomePage.dart';
import 'package:Materioteca_Flutter/Screens/materialSearchPage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      title: 'Materioteca',
      theme: ThemeData(
        primaryColor: Colors.white,
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage()));
}
