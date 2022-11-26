import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

import '../widgets/HomeAppBar.dart';
import '../widgets/SearchFiled.dart';
import '../widgets/SectionTitle.dart';
import '../widgets/Items.dart';
import '../widgets/Categories.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const HomeAppBar(),
          Container(
            // height: 600,
            padding: const EdgeInsets.only(top: 15),
            decoration: const BoxDecoration(
              color: Color(0xFFEDECF2),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(35),
                topRight: Radius.circular(35),
              ),
            ),
            child: Column(
              children: const [
                SearchFiled(),
                SectionTitle(title: "Categories"),
                Categories(),
                SectionTitle(title: "Best Selling"),
                Items()
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: CurvedNavigationBar(
          backgroundColor: Colors.transparent,
          onTap: (value) {},
          color: Theme.of(context).primaryColor,
          height: 70,
          items: [
            Icon(
              Icons.shopping_cart_outlined,
              size: 30,
              color: Colors.white,
            ),
            Icon(
              Icons.home,
              size: 30,
              color: Colors.white,
            ),
            Icon(
              Icons.favorite_border,
              size: 30,
              color: Colors.white,
            ),
          ]),
    );
  }
}
