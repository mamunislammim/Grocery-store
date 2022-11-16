
import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:grocery_app/ItemData/colorsCollection.dart';
import 'package:grocery_app/widget/categoryWidget.dart';
import 'package:grocery_app/widget/popularWidget.dart';
import 'package:grocery_app/widget/topWidget.dart';

import '../ItemData/fruits.dart';
class MainScreen extends StatelessWidget {


 @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: mainColor,
    extendBody: true,
      extendBodyBehindAppBar: true,
      resizeToAvoidBottomInset: true,
      drawer: const Drawer(
        backgroundColor: Color(0xff0e5970),
        width: 300,
        elevation: .2,
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.black,
        elevation: 0,
       // leading: const Icon(Icons.menu),
        actions: [
          const SizedBox(width: 5,),
          Badge(
            position: BadgePosition.topEnd(
              top: 8,
              end: -5
            ),
            animationDuration: const Duration(seconds: 10),
            badgeContent: const Text("1"),
            padding: const EdgeInsets.all(3),
            child: InkWell(
              onTap: (){

              },
              child: Container(
                padding: const EdgeInsets.all(4),
                decoration: BoxDecoration(
                    border: Border.all(color: boxColor),
                    borderRadius: BorderRadius.circular(5)),
                child: Icon(
                  Icons.shopping_cart_checkout,
                  color: boxColor,
                  size: 15,
                ),
              ),
            ),
          ),
          const SizedBox(width: 15,),
        ],
      ),

      // appBar: AppBar(
      //   backgroundColor: Colors.transparent,
      //   elevation: 0,
      //   leading: Padding(
      //     padding: const EdgeInsets.only(left: 20, top: 10, bottom: 10),
      //     child: Container(
      //         decoration: BoxDecoration(
      //             color: Colors.white,
      //             borderRadius: BorderRadius.circular(15)),
      //         child: const Icon(
      //           Icons.add_circle,
      //           color: Colors.white,
      //         )),
      //   ),
      // ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 13, right: 13),
                child: SizedBox(
                  height: height/4.5,
                  child: Stack(
                    children: [
                      ImageSlideshow(
                          isLoop: true,
                         autoPlayInterval: 2000,
                         onPageChanged: (value){
                         // print("Page change : $value");
                         },
                         children: [
                           for(int i=0; i<Fruits().fruitsImage.length; i++)
                         Fruits().fruitsImage[i],
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Welcome",
                            style: TextStyle(color: boxColor, fontSize: width / 10),
                          ),
                          Text(
                            "What do you want to Buy ? ",
                            style: TextStyle(color: boxColor, fontSize: 15),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          SizedBox(
                            height: 30,
                            child: TextField(
                              textAlignVertical: TextAlignVertical.bottom,
                              textAlign: TextAlign.start,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide.none),
                                filled: true,
                                fillColor: boxColor,
                                suffixIcon: const Icon(Icons.filter_list),
                                hintText: "Search here...",
                                prefixIcon: const Icon(Icons.search),
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 15,),
              Container(
                padding: const EdgeInsets.only(
                    bottom: 10, top: 10, left: 13, right: 13),
                decoration: BoxDecoration(
                    color: bgColor,
                    borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(20),
                        topLeft: Radius.circular(20))),
                child: Column(
                  children: [
                    // Category
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Category",
                            style: TextStyle(
                              color: mainColor.withOpacity(.8),
                              fontSize: height/25,
                              fontWeight: FontWeight.bold
                            ),
                          ),
                          const Text(
                            "See All",
                            style: TextStyle(color: Colors.grey),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const CategoryWidget(),
                    const SizedBox(
                      height: 10,
                    ),

                    //Popular
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Popular",
                            style: TextStyle(
                                color: mainColor.withOpacity(.8),
                                fontSize: height/25,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                          const Text(
                            "See All",
                            style: TextStyle(color: Colors.grey),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const PopularWidget(),
                    const SizedBox(
                      height: 10,
                    ),

                    // Top
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Top",
                            style: TextStyle(
                                color: mainColor.withOpacity(.8),
                                fontSize: height/25,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                          const Text(
                            "See All",
                            style: TextStyle(color: Colors.grey),
                          )
                        ],
                      ),
                    ),
                    //const SizedBox(height: 10,),
                    const TopWidget(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
