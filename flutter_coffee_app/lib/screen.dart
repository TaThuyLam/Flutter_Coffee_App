import 'package:flutter/material.dart';
import 'SignIn/SignIn.dart';
class Screen extends StatefulWidget{
  const Screen({super.key});
  static String routeName = '/plash';

  @override
  State<Screen> createState()=> _ScreenPage();
}

class _ScreenPage extends State<Screen>{
  @override
  void initState() {
    super.initState();
    Future.delayed(
        const Duration(seconds: 5),
            (){
          Navigator.of(context).push(MaterialPageRoute(builder: (context)=> SignIn(),
          ));
        }
    );
  }

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        backgroundColor: Colors.red,
        body: Center(
          child:Image(image:AssetImage('assets/image/Highlands_Logo.png'),height: 150,)
          ),
      );
    }
}
