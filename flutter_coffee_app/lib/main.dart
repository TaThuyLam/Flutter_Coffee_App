import 'package:flutter/material.dart';
import 'package:flutter_coffee_app/page/Product/ProductList.dart';
import 'package:flutter_coffee_app/screen.dart';
import 'package:flutter_coffee_app/page/order.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Screen(),
    );
  }
}