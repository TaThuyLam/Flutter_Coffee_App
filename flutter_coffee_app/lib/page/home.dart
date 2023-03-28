import 'package:flutter/material.dart';
import 'dart:async';
import 'package:flutter_coffee_app/page/slidebg.dart';
import 'package:flutter_coffee_app/SignUp/SignUp.dart';


class HomePage extends StatefulWidget {
 
  @override
  _HomePage createState() =>_HomePage();
}

class _HomePage extends State<HomePage> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Column(mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Slide(),

        ],

      ),floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red[900],
            tooltip: 'Add User',
        child: const Icon(Icons.shopping_cart),
        onPressed: (){},
      ),
     
    
    );
  }
}
