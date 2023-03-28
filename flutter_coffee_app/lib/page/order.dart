import 'package:flutter/material.dart';
import 'package:flutter_coffee_app/page/Categories/CateForm.dart';
import 'package:flutter_coffee_app/page/Product/ProductList.dart';

class OrderPage extends StatelessWidget {
  const OrderPage({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        ListFood(),
      ]),
    );
  }
}