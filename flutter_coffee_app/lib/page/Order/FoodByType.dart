import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_coffee_app/Model/Food.dart';
import 'package:flutter_coffee_app/data/data.dart';

class FoodByType extends StatelessWidget
{
  //  int id_Cate=0;
  // ProductByCatePage({required this.id_Cate});
  
  @override
  Widget build(BuildContext context)
  {

   return FutureBuilder(future: ReadData().loadFood(),
        builder: (context,data){
          
          if(data.hasError)
          {
             
            return Center(child: Text("${data.error}"),);
          }
          else
          {
          
            if(data.hasData)
            {
              
              var items=data.data as List<Food>;
              return GridView.count(
                primary: false,
                  padding: const EdgeInsets.all(10),
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  crossAxisCount: 2,
                children: List.generate(items.length, (index) {
                  if(true)
                  {
                     return  itemView(items[index], context);
                  }
                  else
                  {
                    return Container();
                  }

                }
                
                ),

              );
            }
            }
            return Card();
          }
        
      );
    }
}

Widget itemView(Food product,BuildContext context)
{
   return Card(
                  elevation: 5,
                  margin:EdgeInsets.symmetric(horizontal: 10,vertical: 6),
                  child: (
                    Container(
                      padding: EdgeInsets.all(5),
                      child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [

                         Padding(padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                          child:Container(
                            width: 70,height: 70,
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.white),
                            child: Image.asset("assets/image/"+ product.image,height: 200,),
                        
                          )),
                          Container(
                            width: 250,
                            child: Column(children: [
                          Text(product.name.toString(),style: TextStyle(fontWeight: FontWeight.bold,)),
                          Text("Giá: "+ product.price.toString(),style: TextStyle(color: Colors.red),),

                          Center(
                            child: Row(
                              children:[
                                 Icon(Icons.star,color: Colors.yellow[500],),
                                 Icon(Icons.star,color: Colors.yellow[500],),
                                 Icon(Icons.star,color: Colors.yellow[500],),
                                 Icon(Icons.star,color: Colors.yellow[500],),
                                 Icon(Icons.star,color: Colors.yellow[500],)

                              ]
                             
                            ),
                          )


                          

                      
                      

                      ],)
                          )
                        ]
                      )))
                      
                      
                      
                      
                    
                    );
                  
                
}

   