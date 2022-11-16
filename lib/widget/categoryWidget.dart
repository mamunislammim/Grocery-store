import 'package:flutter/material.dart';
import 'package:grocery_app/ItemData/fruits.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    //double width = MediaQuery.of(context).size.width;

    return   SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          for (int i = 0; i < Fruits().fruitsImage.length; i++)
            Container(
              margin: const EdgeInsets.only(right: 5),
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.white,
              ),
              child: Row(
                children: [
                  SizedBox(
                    height: height/20,
                  //  width: 50,
                    child: Fruits().fruitsImage[i],
                  ),
                    SizedBox(
                    width: height/50,
                  ),
                   Text(Fruits().fruitsName[i],style: TextStyle(
                     fontSize: height/35
                   ),)
                ],
              ),
            )
        ],
      ),
    );
  }
}
