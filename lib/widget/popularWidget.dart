import 'package:flutter/material.dart';

import '../ItemData/fruits.dart';

class PopularWidget extends StatelessWidget {
  const PopularWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
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
              child: SizedBox(
                height: 30,
                width: 50,
                child: Fruits().fruitsImage[i],
              ),
            )
        ],
      ),
    );
  }
}
