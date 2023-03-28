
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Slide extends StatefulWidget{
  const Slide({Key? key}):super(key: key);

  @override
 State<Slide> createState()=> _SlideState();
  

}

class _SlideState extends State<Slide>{
  var images=[
    "assets/image/highland_bg1.png",
    "assets/image/highland_bg2.png",
    "assets/image/highland_bg3.png",
  ];
  
  @override
  Widget build(BuildContext context)
  {
    images.map((e) => {print(e)});
    return SlideForm(images);
}}
Widget SlideForm(List<String> images)
{
  return Container(
    child: CarouselSlider(
      items: images.map((e) => Container(
      margin: const EdgeInsets.all(5.0),
      child: ClipRRect(
        
        borderRadius: const BorderRadius.all(Radius.circular(5.0)),
        child: 
            Image.asset(e,
            fit: BoxFit.fitHeight,
            width: 1000.0,
            errorBuilder:(context, error, stackTrace) => Icon(Icons.image),
            ),
            
    
    ))).toList(),
     options: CarouselOptions(
      autoPlay: true,
      aspectRatio: 2.0,
      enlargeCenterPage: true,
      ),
  ));
}