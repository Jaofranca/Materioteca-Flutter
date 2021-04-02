import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextField(
      style: TextStyle(fontWeight: FontWeight.bold),
      decoration: InputDecoration(
        suffixIcon: Icon(
          Icons.search,
          size: 30,
        ),
        labelText: "Pesquisar Material",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50),
        ),
      ),
      /*onEditingComplete: search*/
    );
  }
}
