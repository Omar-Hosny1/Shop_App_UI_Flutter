import "package:flutter/material.dart";

import './pages/CartPage.dart';
import "./pages/HomePages.dart";
import './pages/ItemPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        primaryColor: Color(0xFF4C53A5),
      ),
      routes: {
        "/": (context) => const HomePage(),
        "/cart-page": (context) => const CartPage(),
        "/itemPage": (context) => const ItemPage(),
      },
    );
  }
}
