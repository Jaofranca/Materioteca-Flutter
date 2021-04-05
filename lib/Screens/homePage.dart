import 'package:Materioteca_Flutter/Screens/MaterialPageCard.dart';
import 'package:flutter/material.dart';
import 'MaterialTypeCard.dart';
import 'Utilities/styles.dart';
import 'Widgets/MaterialCard.dart';

class HomePage extends StatelessWidget {
  List<String> normalImages = [
    "assets/normalImages/2.png",
    "assets/normalImages/3.png",
    "assets/normalImages/4.png"
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: Drawer(),
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                title: Text(
                  "Materioteca IS.SMART",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                toolbarHeight: 50,
                centerTitle: true,
                floating: true,
                pinned: true,
                snap: true,
              ),
            ];
          },
          body: SingleChildScrollView(
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  stops: [
                    0.1,
                    0.15,
                    0.3,
                    0.4,
                    0.5,
                    0.6,
                    0.9,
                  ],
                  colors: [
                    Colors.white70,
                    Colors.white60,
                    Colors.white54,
                    Colors.white38,
                    Colors.white30,
                    Colors.white24,
                    Colors.green.shade100,
                  ],
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Seja Bem vindo a uma",
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 30),
                  ),
                  Text(
                    "materioteca digital",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Colors.blue,
                        fontSize: 30),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    "Uma parceria do grupo IS.Smart com a Universidade Federal do Ceará",
                    textAlign: TextAlign.center,
                    style: mediumKtextStyle,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Text(
                      "Lista de Materiais",
                      style: bigktextStyle,
                    ),
                  ),
                  Text(
                    "Explore a ficha técnica, principais aplicações e detalhes úteis de dezenas de materiais",
                    textAlign: TextAlign.center,
                    style: smallKtextStlyle,
                  ),
                  Container(
                    height: 200.0,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      children: [
                        MaterialTypeCard(
                          image: "assets/tiposmateriais/metais.png",
                          name: "Metálicos",
                          listaMateriais: [
                            "Ferro",
                            "Cobre",
                            "Estranho",
                            "Chumbo",
                            "Metal"
                          ],
                        ),
                        MaterialTypeCard(
                          image: "assets/tiposmateriais/ceramicos.png",
                          name: "Cerâmicos",
                          listaMateriais: [
                            "Cimento",
                            "Vidro",
                            "Porcelana",
                            "Rfratários",
                            "Metal"
                          ],
                        ),
                        MaterialTypeCard(
                          image: "assets/tiposmateriais/polimericos.png",
                          name: "Poliméricos",
                          listaMateriais: [
                            "Isopor",
                            "PVC",
                            "Acrílico",
                            "Poliuretano",
                            "Metal"
                          ],
                        ),
                        MaterialTypeCard(
                          image: "assets/tiposmateriais/compósitos.png",
                          name: "Compósitos",
                          listaMateriais: [
                            "Fibra de Carbono",
                            "Fibra de Quartzo",
                            "Madeira(serradura)",
                            "Gráfite",
                            "Metal"
                          ],
                        )
                      ],
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: Text("Ver todos os materiais")),
                  Text(
                    "Essa plataforma tem como proposito catalogar materiais e suas propriedades,visando a utilização das informações no design de produtos ",
                    textAlign: TextAlign.center,
                    style: smallKtextStlyle,
                  ),
                  Text(
                    "Sobre o projeto",
                    style: bigktextStyle,
                  ),
                  Text(
                    "A Materioteca consiste em um acervo de amostras de materiais subdivididos nos diferentes grupos existentes,enfocando todas as etapas dos seus ciclos de vida e possíveis impactos ambientais associados.",
                    textAlign: TextAlign.center,
                    style: smallKtextStlyle,
                  ),
                  BaseCard(
                    imagem: "assets/normalImages/1.png",
                  ),
                  Container(
                    height: 200.0,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 3,
                        itemBuilder: (BuildContext context, int i) => BaseCard(
                              imagem: normalImages[i],
                            )),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// Column(
//             mainAxisAlignment: MainAxisAlignment.start,
//             children: [
// Flexible(
//   child: ListView.builder(
//     scrollDirection: Axis.horizontal,
//     shrinkWrap: true,
//     itemExtent: 4,
//     itemBuilder: (context, i) => MaterialCard(
//       nome: "Aço",
//       primeirotipo: "Maleável",
//       segundotipo: "teste",
//     ),
//   ),
// ),

//
// Flexible(
//   child: ListView.builder(
//     scrollDirection: Axis.horizontal,
//     shrinkWrap: true,
//     itemCount: 5,
//     itemBuilder: (context, i) => Button(
//       value: i,
//       funcao: () => controller.alterarValor1(i.toDouble()),
//     ),
//   ),
// ),
