class Food{
    String name;
    String image;
    int price;
    String foodKey;
    String foodType;
    Food({
       required this.name,
       required this.image,
       required this.price,
       required this.foodKey,
        required this.foodType,
    });
  
  factory Food.fromJson(Map<String, dynamic> json){
    return new Food(
    name:json['name'],
    image:json['image'],
     price:json['price'],
    foodKey:json['foodKey'],
     foodType:json['foodType']
  );
  }

    
}