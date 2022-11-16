import 'package:flutter/material.dart';
import 'package:grocery_app/ItemData/colorsCollection.dart';

import '../ItemData/fruits.dart';
import '../screens/detailsPage.dart';

class TopWidget extends StatelessWidget {
  const TopWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: GridView.count(
        padding: const EdgeInsets.only(top: 5),
        physics: const NeverScrollableScrollPhysics(),
        childAspectRatio: .73, // .73
        mainAxisSpacing: 5,
        crossAxisSpacing: 5,
        shrinkWrap: true,
        crossAxisCount: 2,
        children: [
          for (int i = 0; i < Fruits().fruitsImage.length; i++)
            SizedBox(
              height: 400,
              child: Container(
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.white.withOpacity(.8),
                        spreadRadius: .2,
                        blurRadius: .3),
                  ],
                ),
                child: Column(
                  children: [
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> DetailsPage(i: i)));
                      },
                      child: SizedBox(
                        height: width/3,
                        child: Fruits().fruitsImage[i],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 8,left: 5),
                      alignment: Alignment.centerLeft,
                      child: Text(
                       Fruits().fruitsName[i],
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black.withOpacity(.8),
                          fontSize: width/15,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 3,bottom: 8,left: 5),
                      alignment: Alignment.centerLeft,
                      child:   Text(
                        "Fresh Fruits 2kg",
                        style: TextStyle(
                          fontSize: width/30
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(left: 5),
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "TK 200",
                            style: TextStyle(
                              color: mainColor,
                              fontSize: width/23
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: (){
                          },
                          child: Container(
                              margin: const EdgeInsets.only(right: 5),
                            padding: const EdgeInsets.all(3),
                            decoration: BoxDecoration(
                              color: mainColor,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            alignment: Alignment.centerLeft,
                            child:   Icon(Icons.shopping_cart_checkout,color: Colors.white,size: width/20,)
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            )
        ],
      ),
    );
  }
}
