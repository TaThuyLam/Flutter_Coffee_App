import 'dart:ffi';
import 'package:flutter/material.dart';
import 'package:flutter_coffee_app/Model/FoodType.dart';
import 'dart:async';

import 'package:flutter_coffee_app/data/data.dart';
import 'package:flutter_coffee_app/page/Order/FoodByType.dart';


class OrderMain extends StatelessWidget {
   int index_selected=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
     backgroundColor: Colors.grey[100],
      body: Column(mainAxisAlignment: MainAxisAlignment.start,
      
        children:<Widget> [
           FutureBuilder(future:ReadData().loadFoodType() ,
        builder: (context,data){
          if(data.hasError)
          {
            return Center(child: Text("${data.error}"),);
          }
          else
          {
            if(data.hasData)
            {
               var items=data.data as List<FoodType>;
              return Container(
                color: Colors.grey[200],height: 60,
                child:SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                 child:  Row(
                  children: List.generate(items.length, 
                  (index) =>itemView(items[index], context)
                  )
                ) 
                ),
              );
           
            }
            return Card();
          }
        
      }),
       Container(
        height: 600,
        child:FoodByType()
        
      )


        ],

      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red[900],
            tooltip: 'Add User',
        child: const Icon(Icons.shopping_cart),
        onPressed: (){},
      ),
     
    
    );
  }


Widget itemView(FoodType item,BuildContext context)
{
 
  return TextButton( child: 
  Container(
    padding: EdgeInsets.all(10),
    decoration: BoxDecoration(color: Colors.red[300],borderRadius: BorderRadius.all(Radius.circular(100))),
    child: 
       
         Text(item.name.toString(),style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold),)
    ),
  
  onPressed: (){
    //index_selected=item.id;
  }
  );   
  
}
}

