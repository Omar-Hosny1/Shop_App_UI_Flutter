import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/ItemAppBar.dart';

class ItemPage extends StatelessWidget {
  const ItemPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEDECF2),
      body: ListView(
        children: [
          ItemAppBar(),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 5,
            ),
            child: Column(
              children: [
                Container(
                  height: 300,
                  width: 300,
                  margin: EdgeInsets.only(top: 15),
                  decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(150)),
                  child: Image.asset(
                    "images/1.png",
                    height: 300,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.symmetric(horizontal: 7),
                  child: Text(
                    "Product Title",
                    style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 7),
                  margin: EdgeInsets.only(top: 10),
                  alignment: Alignment.centerLeft,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 5),
                        child: Row(
                          children: [
                            for (int i = 0; i < 4; i++)
                              Container(
                                margin: EdgeInsets.only(right: 7),
                                child: Icon(
                                  Icons.favorite,
                                  color: Theme.of(context).primaryColor,
                                ),
                              ),
                            Icon(
                              Icons.favorite,
                              color: Colors.grey,
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(2),
                            decoration: BoxDecoration(
                              color: Colors.grey.shade400,
                              borderRadius: BorderRadius.circular(11),
                            ),
                            child: const Icon(
                              CupertinoIcons.minus,
                              size: 20,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 5),
                            child: Text(
                              "01",
                              style: TextStyle(
                                color: Theme.of(context).primaryColor,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(2),
                            decoration: BoxDecoration(
                              color: Colors.grey.shade400,
                              borderRadius: BorderRadius.circular(11),
                            ),
                            child: const Icon(
                              CupertinoIcons.plus,
                              size: 20,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 9),
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              "Describtion For This Project, Describtion For This Project, " +
                  "For This Project, Describtion For This Project, " +
                  "Describtion For This Project Describtion For This Project",
              style: TextStyle(
                fontSize: 15,
              ),
            ),
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(top: 15, right: 10, left: 10),
                child: Text(
                  "Size",
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 15),
                child: Row(
                  children: [
                    for (int i = 1; i < 7; i++)
                      Container(
                        decoration: BoxDecoration(),
                        child: Container(
                          margin: EdgeInsets.only(right: 10),
                          alignment: Alignment.center,
                          child: Container(
                            padding: EdgeInsets.all(4),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.3),
                                    spreadRadius: 1,
                                    blurRadius: 10,
                                  )
                                ]),
                            child: Text(
                              "$i",
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                        ),
                      ),
                  ],
                ),
              )
            ],
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(top: 15, right: 10, left: 10),
                child: Text(
                  "Color",
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 15),
                child: Row(
                  children: [
                    for (int i = 1; i < 7; i++)
                      Container(
                        decoration: BoxDecoration(),
                        child: Container(
                          margin: EdgeInsets.only(right: 10),
                          alignment: Alignment.center,
                          child: Container(
                            padding: EdgeInsets.all(4),
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 150, i * 40, 5),
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.3),
                                    spreadRadius: 1,
                                    blurRadius: 10,
                                  )
                                ]),
                            child: Text(
                              "$i",
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                        ),
                      ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("\$55"),
            Container(
              padding: EdgeInsets.all(7),
              decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.circular(5)),
              child: Text(
                "Order Now",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
