import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:popaket_ecommerce/constants.dart';
import 'package:popaket_ecommerce/screens/home/components/body.dart';
import 'package:badges/badges.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: buildAppBar(),
        body: Body(),
        backgroundColor: Color.fromARGB(255, 247, 247, 247),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: Badge(
          position: BadgePosition.topEnd(end: 1),
          badgeContent: Text(
            "2",
            style: TextStyle(fontSize: 15, color: Colors.white),
          ),
          child: FloatingActionButton(
            backgroundColor: Colors.deepPurple,
            child: const Icon(
              Icons.add_shopping_cart,
              color: Colors.lightBlueAccent,
            ),
            onPressed: () {},
          ),
        ),
        bottomNavigationBar: BottomAppBar(
            shape: CircularNotchedRectangle(),
            notchMargin: 4.0,
            child: new Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                IconButton(
                  icon: Icon(
                    Icons.home_filled,
                    color: Colors.deepPurple,
                  ),
                  onPressed: () {},
                ),
                Container(
                  margin: EdgeInsets.only(right: 80.0),
                  child: IconButton(
                    icon: Icon(
                      Icons.favorite,
                      color: Colors.grey,
                    ),
                    onPressed: () {},
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.shop, color: Colors.grey),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(
                    Icons.person,
                    color: Colors.grey,
                  ),
                  onPressed: () {},
                ),
              ],
            )));
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset("assets/icons/fourdots.svg"),
        onPressed: () {},
      ),
      actions: <Widget>[
        IconButton(
          icon: SvgPicture.asset(
            "assets/icons/search.svg",
            // By default our  icon color is white
            color: kTextColor,
          ),
          onPressed: () {},
        ),
        SizedBox(width: kDefaultPaddin / 2)
      ],
    );
  }
}
