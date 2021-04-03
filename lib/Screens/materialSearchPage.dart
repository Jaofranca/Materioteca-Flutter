import 'package:Materioteca_Flutter/Utilities/CustomTextField.dart';
import 'package:Materioteca_Flutter/Utilities/MaterialCard.dart';
import 'package:Materioteca_Flutter/material_Controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class MaterialSearchPage extends StatelessWidget {
  final Material_Controller material_controller = Material_Controller();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 4,
        child: Scaffold(
          body: NestedScrollView(
            headerSliverBuilder:
                (BuildContext context, bool innerBoxIsScrolled) {
              return <Widget>[
                SliverAppBar(
                  toolbarHeight: 100,
                  actions: [
                    Padding(
                      padding: EdgeInsets.only(right: 20),
                      child: Observer(builder: (_) {
                        return GestureDetector(
                          child: material_controller.buttonPressed
                              ? Icon(Icons.close)
                              : Icon(Icons.search),
                          onTap: material_controller.alterarbuttonPressed,
                        );
                      }),
                    ),
                  ],
                  title: Observer(
                    builder: (_) {
                      return material_controller.buttonPressed
                          ? Padding(
                              padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                              child: CustomTextField())
                          : Text(
                              'Materioteca IS.SMART',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            );
                    },
                  ),
                  centerTitle: true,
                  floating: true,
                  pinned: true,
                  snap: true,
                  bottom: TabBar(
                    tabs: [
                      Tab(text: "Metais"),
                      Tab(
                        text: "Cerâmicos",
                      ),
                      Tab(
                        text: "Poliméricos",
                      ),
                      Tab(
                        text: "Compósitos",
                      )
                    ],
                  ),
                )
              ];
            },
            body: TabBarView(
              children: [
                Flexible(
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: 5,
                    itemBuilder: (context, i) => MaterialCard(
                      nome: "Aço",
                      primeirotipo: "Maleável",
                      segundotipo: "teste",
                    ),
                  ),
                ),
                Flexible(
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: 5,
                    itemBuilder: (context, i) => MaterialCard(
                      nome: "Metal",
                      primeirotipo: "Maleável",
                      segundotipo: "teste",
                    ),
                  ),
                ),
                Flexible(
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: 5,
                    itemBuilder: (context, i) => MaterialCard(
                      nome: "Ferro",
                      primeirotipo: "Maleável",
                      segundotipo: "teste",
                    ),
                  ),
                ),
                Flexible(
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: 5,
                    itemBuilder: (context, i) => MaterialCard(
                      nome: "Cobre",
                      primeirotipo: "Maleável",
                      segundotipo: "teste",
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
