import 'package:flutter/material.dart';
import 'package:flutter_coffee_app/SignIn/SignIn.dart';

class SignUp extends StatefulWidget {
 
  @override
  _SignUpState createState() =>_SignUpState();
}

class _SignUpState extends State<SignUp> {
 

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        backgroundColor:Colors.yellow[100] ,
        elevation: 0, 
        leading:GestureDetector(child:Icon(Icons.arrow_back),onTap: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context)=> SignIn(),));

        },), 
        foregroundColor: Color.fromARGB(255, 171, 50, 42),
        ),
      backgroundColor: Colors.yellow[100],
      body:Container(
        child: Column(mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Center(
              child: Image(image: AssetImage("image/Highlands_Logo.png"),height: 70,),

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
             //   margin: EdgeInsets.fromLTRB(0, 150, 0, 0),
           
          decoration: BoxDecoration(boxShadow:<BoxShadow> [BoxShadow(color: Colors.grey,   blurRadius: 15.0,  offset: Offset(0.0, 0.75)  )],
          color: Color.fromARGB(255, 252, 250, 250),borderRadius: BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20))),
          padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
          child: Column(mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              
              Padding(padding: EdgeInsets.fromLTRB(10, 30, 10, 20),
                child: Text('Đăng ký',
             style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20
             ),
             ),
              ),
               Padding(padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                child:  TextField(
                decoration: InputDecoration(
                  labelText: 'Họ và tên',
                  labelStyle: TextStyle(color: Colors.grey,fontSize: 20),
                  filled: true,
                  fillColor: Colors.white
                  ),
                
            
              )
              
              ),
              Padding(padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                child:  TextField(
                decoration: InputDecoration(
                  labelText: 'Số điện thoại',
                  labelStyle: TextStyle(color: Colors.grey,fontSize: 20),
                  filled: true,
                  fillColor: Colors.white
                  ),
                
            
              )
              
              ),
                Padding(padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                child:  TextField(
                decoration: InputDecoration(
                  labelText: 'Mật khẩu',
                  labelStyle: TextStyle(color: Colors.grey,fontSize: 20),
                  filled: true,
                  fillColor: Colors.white,
                  
                  ),obscureText: true,
                
            
              )
              
              ),
                Padding(padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                child:  TextField(
                decoration: InputDecoration(
                  labelText: 'Nhập lại mật khẩu',
                  labelStyle: TextStyle(color: Colors.grey,fontSize: 20),
                  filled: true,
                  fillColor: Colors.white,
                  
                  ),obscureText: true,
                
            
              )
              
              ),
               Padding(padding: EdgeInsets.fromLTRB(10, 20, 10, 100),
                child:  TextButton(
                  
                  child: Text("Đăng ký",style: TextStyle(color: Colors.white),),
                 style: TextButton.styleFrom(backgroundColor: Colors.red[900]),
                  onPressed: (){})
              
              )
             
           

            ]),
            
          )
              


          ],
          
        )
        // child:Container(
        //   
          
          
        )
       

      
    )
    );
  }
}
