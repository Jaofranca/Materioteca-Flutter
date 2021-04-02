import 'package:Materioteca_Flutter/MaterialType.dart';
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
      child: Container(
          height: 200,
          width: 300,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(.5),
                  blurRadius: 20.0, // soften the shadow
                  spreadRadius: 0.0, //extend the shadow
                  offset: Offset(
                    5.0, // Move to right 10  horizontally
                    5.0,
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
          )),
    );
  }
}

// BoxDecoration(
//         borderRadius: BorderRadius.all(Radius.circular(10)),
//         image: DecorationImage(
//           image: image,
//           fit: BoxFit.cover,
