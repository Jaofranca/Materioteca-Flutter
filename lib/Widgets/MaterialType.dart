import 'package:flutter/material.dart';

class MaterialTypeContainer extends StatelessWidget {
  MaterialTypeContainer({this.sizefont, this.name});
  final double sizefont;
  final String name;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20,
      width: sizefont + 60,
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: Center(
        child: Text(
          name,
          style: TextStyle(fontSize: sizefont, color: Colors.white),
        ),
      ),
    );
  }
}
