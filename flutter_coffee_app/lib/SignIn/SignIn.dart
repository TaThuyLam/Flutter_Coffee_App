import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter_coffee_app/SignUp/SignUp.dart';
import 'package:flutter_coffee_app/layout/drawer.dart';


class SignIn extends StatefulWidget {
 
  @override
  _SignInState createState() =>_SignInState();
}

class _SignInState extends State<SignIn> {



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.yellow[100],
      
      body:Container(
        child: Column(mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Center(
              child: Image(image: AssetImage("assets/image/Highlands_Logo.png"),height: 70,),

            ),
              Padding(padding: EdgeInsets.fromLTRB(10, 0, 0, 10),
                child: Text(
                  "HIGHLAND",
                  style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 171, 50, 42),
                  fontSize: 30,
                  ),
                )
              ),
              
              Container(
           
          decoration: BoxDecoration(boxShadow:<BoxShadow> [BoxShadow(color: Colors.grey,   blurRadius: 15.0,  offset: Offset(0.0, 0.75)  )],
          color: Color.fromARGB(255, 249, 242, 242),borderRadius: BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20))),
          padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
          child: Column(mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Padding(padding: EdgeInsets.fromLTRB(10, 30, 10, 20),
                child: Text('Đăng nhập',
             style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20
             ),
             ),
              ),
              Padding(padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                child:    TextFormField(
                decoration: InputDecoration(
                    labelText: "Số điện thoại",
                    border:  const OutlineInputBorder(),
                    hintText: '0123456789', 
                    suffixIcon: const Icon(Icons.phone,color: Colors.black,),
                ),
                  ),
                
            
              ),
               Padding(padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                child:    TextFormField(
                decoration: InputDecoration(
                    labelText: "Mật khẩu",
                    border:  const OutlineInputBorder(),
                    hintText: '********',
                    suffixIcon: const Icon(Icons.lock,color: Colors.black,),
                ),obscureText: true,
                  ),
                
            
              ),
               Padding(padding: EdgeInsets.fromLTRB(10, 20, 10, 10),
                child:  TextButton(
                  child: Text("Đăng nhập",style: TextStyle(color: Colors.white),),
                 style: TextButton.styleFrom(backgroundColor: Colors.red[900]),
                  onPressed: (){
                     Navigator.of(context).push(MaterialPageRoute(builder: (context)=> DrawerNavigation(),));

                  })
              
              ),
              Center(
                child: Text('Hoặc'),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Padding(padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                child:Container(
                  width: 50,height: 50,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.white),
                  child: Image(image: AssetImage('assets/image/apple.png'),height: 100,),
              
                )
              ),
                Padding(padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                child:Container(
                  width: 50,height: 50,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.white),
                  child: Image(image: AssetImage('assets/image/google.png'),height: 100,),
              
                )
              ),
               Padding(padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                child:Container(
                  width: 50,height: 50,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.white),
                  child: Image(image: AssetImage('assets/image/facebook.png'),height: 100,),
              
                )
              ),
                ],

              ),
              Padding(padding: EdgeInsets.fromLTRB(0, 50, 0 , 50),
              child:Center(
                child: TextButton(
                  
                  child: Text("Tiếp tục với tư cách khách",style: TextStyle(color: Colors.red),),
                  onPressed: (){
                              Navigator.of(context).push(MaterialPageRoute(builder: (context)=> SignIn(),));

                  })),
              
              ),
              

              Center(
                child: Row(children: [
                  Text("Bạn chưa có tài khoản?"),
                  TextButton(
                  
                  child: Text("Đăng ký",style: TextStyle(color: Colors.blue),),
                  onPressed: (){
                              Navigator.of(context).push(MaterialPageRoute(builder: (context)=> SignUp(),));

                  })

                ],
                mainAxisAlignment: MainAxisAlignment.center,
                ),
              ),
              SizedBox(height: 50,)
             
           

            ]),
            
          )
              


          ],
          
        )
          
          
        )
       

      
    )
    );
  }
}
