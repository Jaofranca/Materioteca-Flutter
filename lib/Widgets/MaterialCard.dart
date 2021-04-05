import 'package:Materioteca_Flutter/Screens/materialPageCard.dart';
import 'package:Materioteca_Flutter/Utilities/MaterialType.dart';
import 'package:flutter/material.dart';

class MaterialCard extends StatelessWidget {
  MaterialCard({this.nome, this.primeirotipo, this.segundotipo});
  final String nome;
  final String primeirotipo;
  final String segundotipo;
  final String imagem =
      "https://tecnoblog.net/wp-content/uploads/2013/12/dogecoin1-e1611930600221.jpg";
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(50, 10, 50, 10),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => MaterialPageCard(
                child: this,
                title: nome,
              ),
            ),
          );
        },
        child: Container(
          height: 200,
          width: 300,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(.5),
                  blurRadius: 2.0, // soften the shadow
                  spreadRadius: 2.0, //extend the shadow

                  offset: Offset(
                    5.0, // Move to right 10  horizontally
                    2.0,
                  ))
            ],
            borderRadius: BorderRadius.all(Radius.circular(20)),
            image:
                DecorationImage(image: NetworkImage(imagem), fit: BoxFit.cover),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    nome,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  MaterialTypeContainer(
                    name: primeirotipo,
                    sizefont: 15,
                  ),
                  MaterialTypeContainer(
                    name: segundotipo,
                    sizefont: 15,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class BaseCard extends StatelessWidget {
  BaseCard({this.imagem});
  final String imagem;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
      child: Container(
        height: 200,
        width: 300,
        decoration: BoxDecoration(
          // boxShadow: [
          //   BoxShadow(
          //       color: Colors.grey.withOpacity(.5),
          //       blurRadius: 2.0, // soften the shadow
          //       spreadRadius: 2.0, //extend the shadow

          //       offset: Offset(
          //         5.0, // Move to right 10  horizontally
          //         2.0,
          //       ))
          // ],
          borderRadius: BorderRadius.all(Radius.circular(10)),
          image: DecorationImage(image: AssetImage(imagem), fit: BoxFit.cover),
        ),
      ),
    );
  }
}

// BoxDecoration(
//         borderRadius: BorderRadius.all(Radius.circular(10)),
//         image: DecorationImage(
//           image: image,
//           fit: BoxFit.cover,
