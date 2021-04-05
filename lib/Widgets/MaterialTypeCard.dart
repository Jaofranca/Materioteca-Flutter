import 'package:Materioteca_Flutter/Screens/materialPageCard.dart';
import 'package:Materioteca_Flutter/Widgets/MaterialType.dart';
import 'package:flutter/material.dart';

class MaterialTypeCard extends StatelessWidget {
  MaterialTypeCard({this.name, this.image, this.listaMateriais});
  final String name;
  final List<String> listaMateriais;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
      child: GestureDetector(
        onTap: () {
          // Navigator.push(
          //   context,
          //   MaterialPageRoute(
          //     builder: (_) => MaterialPageCard(
          //       child: this,
          //       title: nome,
          //     ),
          //   ),
          // );
        },
        child: Container(
          height: 150,
          width: 120,
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(.5),
                blurRadius: 2.0, // soften the shadow
                spreadRadius: 0.0, //extend the shadow
                offset: Offset(
                  5.0, // Move to right 10  horizontally
                  5.0,
                ),
              ),
            ],
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(padding: EdgeInsets.only(top: 10), child: Text(name)),
              Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: Image.asset(
                  image,
                  height: 50,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 10),
                child: Column(
                  children: [
                    Text(
                      listaMateriais[0],
                      style: TextStyle(fontSize: 12),
                    ),
                    Text(listaMateriais[1], style: TextStyle(fontSize: 12)),
                    Text(listaMateriais[2], style: TextStyle(fontSize: 12)),
                    Text(listaMateriais[3], style: TextStyle(fontSize: 12)),
                    Text(
                      "ver mais",
                      style: TextStyle(color: Colors.blue),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
