import 'package:Materioteca_Flutter/Screens/MaterialPageCard.dart';
import 'package:Materioteca_Flutter/Utilities/MaterialCard.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                title: Text(
                  "Materioteca IS.SMART",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                toolbarHeight: 40,
                centerTitle: true,
                floating: true,
                snap: true,
              ),
            ];
          },
          body: Expanded(
            child: Column(
              children: [
                // Text(
                //   "Seja Bem vindo a uma",
                //   style: TextStyle(fontWeight: FontWeight.w500, fontSize: 30),
                // ),
                // Text("Materioteca Digital",
                //     style: TextStyle(
                //         fontWeight: FontWeight.w500,
                //         color: Colors.blue,
                //         fontSize: 30)),
                // Text(
                //     "Essa plataforma tem como proposito catalogar materiais e suas propriedades,visando a utilização das informações no design de produtos "),
                Flexible(
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemExtent: 4,
                    itemBuilder: (context, i) => MaterialCard(
                      nome: "Aço",
                      primeirotipo: "Maleável",
                      segundotipo: "teste",
                    ),
                  ),
                ),
                // Text(
                //   "Sobre o projeto",
                //   style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                // ),
                // Text(
                //     "A Materioteca consiste em um acervo de amostras de materiais "),
                // Text("subdivididos nos diferentes grupos existentes,"),
                // Text("enfocando todas as etapas dos seus ciclos de vida e"),
                // Text("possíveis impactos ambientais associados."),
                // Text("Inclui também a apresentação de referências"),
                // MaterialCard(
                //   nome: "Aço",
                //   primeirotipo: "Maleável",
                //   segundotipo: "Maleável",
                // ),
                // Flexible(
                //   child: ListView.builder(
                //     scrollDirection: Axis.horizontal,
                //     shrinkWrap: true,
                //     itemExtent: 3,
                //     itemBuilder: (context, i) => MaterialCard(
                //       nome: "Aço",
                //       primeirotipo: "Maleável",
                //       segundotipo: "teste",
                //     ),
                //   ),
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
