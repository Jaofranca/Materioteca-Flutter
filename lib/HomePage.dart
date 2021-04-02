import 'package:Materioteca_Flutter/MaterialCard.dart';
import 'package:flutter/material.dart';

// class HomePage extends StatelessWidget {
//   ScrollController _scrollController;
//   TabController _tabcontroller;
//   List<MaterialCard> cards = [];

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//           body: CustomScrollView(
//         slivers: [
//           SliverAppBar(
//             title: Text(
//               'Materioteca IS.SMART',
//               style: TextStyle(fontWeight: FontWeight.bold),
//             ),
//             centerTitle: true,
//             floating: true,
//             expandedHeight: 160.0,
//             snap: true,
//             flexibleSpace: FlexibleSpaceBar(
//               title: Text("FlexibleSpace title"),
//             ),
//             bottom: TabBar(
//               tabs: [
//                 Tab(
//                   text: "Metálicos",
//                 ),
//                 Tab(
//                   text: "aluminios",
//                 )
//               ],
//               controller: _tabcontroller,
//             ),
//           ),
//           SliverList(
//               delegate: SliverChildListDelegate([
//             Padding(
//               padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
//               child:
//             MaterialCard(),
//             MaterialCard(),
//             // Flexible(
//             //   child: Column(
//             //     children: cards,
//             //   ),
//             // )
//           ]))
//         ],
//       )),
//     );
//   }
// }

class HomePage extends StatelessWidget {
  bool textisTrue = false;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                actions: [
                  Padding(
                    padding: EdgeInsets.only(right: 20),
                    child: GestureDetector(
                      child: Icon(Icons.ac_unit),
                      onTap: () {
                        if (textisTrue) {
                          textisTrue = false;
                        } else {
                          textisTrue = true;
                        }
                      },
                    ),
                  ),
                ],
                title: textisTrue
                    ? TextField()
                    : Text(
                        'Materioteca IS.SMART',
                        style: TextStyle(fontWeight: FontWeight.bold),
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
                child: Column(
                  children: [
                    MaterialCard(),
                    MaterialCard(),
                  ],
                ),
              ),
              MaterialCard(),
              MaterialCard(),
              MaterialCard()
            ],
          ),
        ),
      ),
    );
  }
}
// appBar: AppBar(
//         title: Text('Materioteca IS.SMART'),
//         centerTitle: true,
//         elevation: 0,
//         shadowColor: Colors.white,
//       ),
//       body:

// SingleChildScrollView(
//           child: Column(
//             children: [
//               Padding(
//                 padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
//                 child:
//               ),
//               MaterialCard(),
//               MaterialCard(),
//               MaterialCard()
//             ],
//           ),
//         ),
