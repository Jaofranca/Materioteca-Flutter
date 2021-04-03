import 'package:flutter/material.dart';

class MaterialPageCard extends StatelessWidget {
  MaterialPageCard({this.child, this.title});
  Widget child;
  String title;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                // toolbarHeight: 100,
                title: Text(
                  title,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                toolbarHeight: 100,
                centerTitle: true,
                floating: true,
                snap: true,
              ),
            ];
          },
          body: Column(
            children: [
              child,
              Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec nec diam vitae tortor porta fringilla sit amet sit amet libero. Vivamus eu hendrerit velit, in vestibulum libero. Curabitur aliquet vehicula libero ac placerat. Praesent vitae enim dapibus, maximus felis vel, lacinia mauris. Mauris tincidunt feugiat pulvinar. Integer porta sagittis sagittis. Maecenas volutpat, urna a iaculis efficitur, diam ligula accumsan augue, mollis aliquet nibh ligula ut nisl. Maecenas luctus sed dolor at sollicitudin. Cras tellus libero, dapibus quis condimentum sit amet, vulputate vel sem. Duis nec ante sodales, molestie tortor et, imperdiet enim. In auctor nisi vitae efficitur sagittis. Donec suscipit vulputate orci in mollis. Donec odio turpis, iaculis a orci sit amet, molestie gravida est. Proin eget ultrices mi. Nunc tristique blandit pulvinar. Duis vel nisi in nisl dapibus dapibus.")
            ],
          ),
        ),
      ),
    );
  }
}

//
