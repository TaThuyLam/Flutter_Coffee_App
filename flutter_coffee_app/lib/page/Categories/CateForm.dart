
import 'package:flutter/material.dart';
import 'package:flutter_coffee_app/Model/FoodType.dart';
import 'package:flutter_coffee_app/data/data.dart';
import 'package:flutter_coffee_app/page/Product/ProductList.dart';

class GridCate extends StatefulWidget{
  const GridCate({Key? key}):super(key: key);

  @override
 State<GridCate> createState()=> _GridCateState();

}

class _GridCateState extends State<GridCate>{
  List<FoodType> products=[];
  Future<String> loadList() async{
  
    products=await ReadData().loadFoodType();
    return '';
  }

  @override
  void initState(){
    super.initState();
    loadList();
  }

  @override
  Widget build(BuildContext context)
  {
    return 
      FutureBuilder(future: loadList(),
        builder: (context,data){
          if(data.hasError)
          {
            return Center(child: Text("${data.error}"),);
          }
          else
          {
            if(data.hasData)
            {
              var items=products as List<FoodType>;
              return 
              GridView.builder(padding: EdgeInsets.all(15),
                itemCount: items.length,
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 100,
                  childAspectRatio: 0.8,
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 15 ),
                itemBuilder: (context,index){
                  return itemGridView(items[index],context);
              });
            }
            return Card();
          }
        
      });
     // Container(child:ListFood(),) 
      
  }
}

Widget itemGridView(FoodType item,BuildContext context)
{
  return TextButton(
    onPressed: (){
      Navigator.of(context).push(MaterialPageRoute(builder: (context)=> ListFood(),));


    }, 
    child: 
  Container(
    padding: EdgeInsets.all(20),
    decoration: BoxDecoration(color: Colors.grey[200],borderRadius: BorderRadius.all(Radius.circular(200))),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
             Image.asset(item.image.toString(),
                              height:50,
                              errorBuilder:(context, error, stackTrace) => Icon(Icons.image),
                              ),
            Text(item.name.toString(),style: TextStyle(fontWeight: FontWeight.bold),)

      ]
    )
           
  ));
}