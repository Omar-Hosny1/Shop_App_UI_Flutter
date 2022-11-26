// ignore: file_names
import 'package:badges/badges.dart';
import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(25),
      child: Row(children: [
        Icon(
          Icons.sort,
          size: 30,
          color: Theme.of(context).primaryColor,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Text(
            "DP SHOP",
            style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).primaryColor),
          ),
        ),
        const Spacer(),
        Badge(
          badgeColor: Colors.red,
          padding: const EdgeInsets.all(5),
          badgeContent: const Text(
            "4",
            style: TextStyle(color: Colors.white),
          ),
          child: InkWell(
            onTap: () {},
            child: Icon(
              Icons.shopping_bag_outlined,
              size: 30,
              color: Theme.of(context).primaryColor,
            ),
          ),
        ),
      ]),
    );
  }
}
