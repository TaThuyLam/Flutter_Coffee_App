import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:flutter_coffee_app/Model/Food.dart';
import 'package:flutter_coffee_app/Model/FoodType.dart';
class ReadData{
  Future<List<FoodType>> loadFoodType() async {
    var data = await rootBundle.loadString('assets/coffee-nhom14-default-rtdb-export.json');
    var datajson = jsonDecode(data);
    return(datajson['FoodType'] as List).map((e) => FoodType.fromJson(e)).toList();
  }

  Future<List<Food>> loadFood() async {
    var data = await rootBundle.loadString('assets/coffee-nhom14-default-rtdb-export.json');
    var datajson = jsonDecode(data);
    return(datajson['foods'] as List).map((e) => Food.fromJson(e)).toList();
  }
}