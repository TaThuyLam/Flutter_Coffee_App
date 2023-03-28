class FoodType{

    String id;
    String name;
     String image;
    FoodType( {
      required  this.name,
      required  this.id,
      required  this.image,
    });

  factory FoodType.fromJson(Map<String, dynamic> json){
    return new FoodType(
    id:json['id'],
    name:json['name'],
      image:json['image']);
  }

}