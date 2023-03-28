
import 'package:flutter/material.dart';
import 'package:flutter_coffee_app/Model/Food.dart';
import 'package:flutter_coffee_app/data/data.dart';

class ListFood extends StatefulWidget{
  const ListFood({Key? key}):super(key: key);

  @override
 State<ListFood> createState()=> _ListFoodState();

}

class _ListFoodState extends State<ListFood>{
  List<Food> products=[];
  Future<String> loadList() async{
  
    products=await ReadData().loadFood();
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
    print(loadList());
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.white,foregroundColor: Colors.red,),
    body:Container(color: Colors.white,
    child:   FutureBuilder(future: loadList(),
        builder: (context,data){
          if(data.hasError)
          {
            return Center(child: Text("${data.error}"),);
          }
          else
          {
            if(data.hasData)
            {
              var items=products as List<Food>;
              return ListView.builder(itemBuilder: (context,index){
                return Card(
                  elevation: 5,
                  margin:EdgeInsets.symmetric(horizontal: 10,vertical: 6),
                  child: (
                    Container(
                      padding: EdgeInsets.all(8),
                      child:  Row(
                          children: [
                            Image.asset("assets/image/"+items[index].image.toString(),
                              width: 100,
                              errorBuilder:(context, error, stackTrace) => Icon(Icons.image),
                              ),
                              
                              Column(
                                children: [
                                  Text(items[index].name.toString()),
                                  Text("Giá: "+items[index].price.toString())
                                ],
                              )
                          ],
                        ),
                      )
                      
                      
                    
                    )
                  
                );
            });
            }return Card();
          }
        
      })));
  }
}