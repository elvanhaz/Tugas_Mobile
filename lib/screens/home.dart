import 'package:flutter/material.dart';

import 'package:now_ui_flutter/constants/Theme.dart';

//widgets
import 'package:now_ui_flutter/widgets/navbar.dart';
import 'package:now_ui_flutter/widgets/card-horizontal.dart';
import 'package:now_ui_flutter/widgets/card-small.dart';
import 'package:now_ui_flutter/widgets/card-square.dart';
import 'package:now_ui_flutter/widgets/drawer.dart';

// import 'package:now_ui_flutter/screens/product.dart';

final Map<String, Map<String, String>> homeCards = {
  "Ice Cream": {
    "title": "Pemandangan indah ditepi danau",
    "image":
        "https://images.unsplash.com/photo-1506744038136-46273834b3fb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80"
  },

};

class Home extends StatelessWidget {
  // final GlobalKey _scaffoldKey = new GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: Navbar(
          title: "Home",
          searchBar: true,
          categoryOne: "Trending",
          categoryTwo: "Fashion",
        ),
        backgroundColor: NowUIColors.bgColorScreen,
        // key: _scaffoldKey,
        drawer: NowDrawer(currentPage: "Home"),
        body: Container(
          padding: EdgeInsets.only(left: 16.0, right: 16.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 16.0),
                  child: CardHorizontal(
                      cta: "Lihat Selengkapnya",
                      title: homeCards["Ice Cream"]['title'],
                      img: homeCards["Ice Cream"]['image'],
                      tap: () {
                        Navigator.pushNamed(context, '/pro');
                      }),
                ),
                SizedBox(height: 8.0),

                SizedBox(height: 8.0),

                SizedBox(height: 8.0),


              ],
            ),
          ),
        ));
  }
}
