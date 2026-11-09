import 'package:fashion_store/auth/login.dart';
import 'package:fashion_store/auth/signup.dart';
import 'package:fashion_store/cart.dart';
import 'package:fashion_store/done.dart';
import 'package:fashion_store/favorites.dart';
import 'package:fashion_store/home.dart';
import 'package:fashion_store/products.dart';
import 'package:fashion_store/profile.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Signup(),
      routes: {
        "login": (context) => Login(),
        "signup": (context) => Signup(),
        "home": (context) => Home(),
        "products": (context) => Products(category: "all"),
        "favorits": (context) => Favorites(),
        "cart": (context) => Cart(),
        "profile": (context) => Profile(),
        "done": (context) => Done(),
      },
    );
  }
}
