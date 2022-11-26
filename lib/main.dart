import "package:flutter/material.dart";
import "./pages/HomePages.dart";

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        primaryColor: Color(0xFF4C53A5),
      ),
      routes: {"/": (context) => HomePage()},
    );
  }
}
