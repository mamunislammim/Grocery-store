import 'package:flutter/cupertino.dart';

class Fruits{

 List<Widget> fruitsImage = const [
   Image(image: AssetImage('images/fruits/apple.png')),
   Image(image: AssetImage('images/fruits/banana.png')),
   Image(image: AssetImage('images/fruits/gowava.png'),fit: BoxFit.fill,),
   Image(image: AssetImage('images/fruits/grapes.png')),
   Image(image: AssetImage('images/fruits/lemon.png')),
   Image(image: AssetImage('images/fruits/mango.png')),
   Image(image: AssetImage('images/fruits/orange.png')),
   Image(image: AssetImage('images/fruits/papaya.png')),
   Image(image: AssetImage('images/fruits/pinapple.png')),
   Image(image: AssetImage('images/fruits/strobery.png')),
   Image(image: AssetImage('images/fruits/watermelon.png')),
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