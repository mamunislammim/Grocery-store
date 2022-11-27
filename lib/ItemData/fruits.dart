import 'package:flutter/cupertino.dart';

class Fruits{

 List<Widget> fruitsImage =   [
   const Image(image: AssetImage('images/fruits/apple.png'),),
   const Image(image: AssetImage('images/fruits/banana.png')),
   const Image(image: AssetImage('images/fruits/gowava.png'),fit: BoxFit.fill,),
   const Image(image: AssetImage('images/fruits/grapes.png')),
   const Image(image: AssetImage('images/fruits/lemon.png')),
   const Image(image: AssetImage('images/fruits/mango.png')),
   const Image(image: AssetImage('images/fruits/orange.png')),
   const Image(image: AssetImage('images/fruits/papaya.png')),
   const Image(image: AssetImage('images/fruits/pinapple.png')),
   const Image(image: AssetImage('images/fruits/strobery.png')),
   const Image(image: AssetImage('images/fruits/watermelon.png')),
 ];

 List<String> fruitsName = [
   "Apple",
   "Banana",
   "Gospava",
   "Grapes",
   "Lemon",
   "Mango",
   "Orange",
   "Papaya",
   "Pineapple",
   "Strobe",
   "WaterLemon"
 ];

}