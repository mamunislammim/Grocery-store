import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:grocery_app/ItemData/colorsCollection.dart';
import 'package:grocery_app/ItemData/global_variable.dart';
import 'package:grocery_app/widget/categoryWidget.dart';
import 'package:grocery_app/widget/popularWidget.dart';
 import '../ItemData/fruits.dart';
import 'detailsPage.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: mainColor,
        extendBodyBehindAppBar: true,
        drawer: const Drawer(
          backgroundColor: Color(0xffef1313),
          width: 300,
          elevation: .2,
        ),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          // leading: const Icon(Icons.menu),
          actions: [
            const SizedBox(
              width: 5,
            ),
            Badge(
              badgeColor: Colors.red,
              position: BadgePosition.topEnd(top: 8, end: -5),
              animationDuration: const Duration(seconds: 10),
              badgeContent:   Text(
                "$itemCount",
                style:
                    const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
              padding: const EdgeInsets.all(4.5),
              child: InkWell(
                onTap: () {},
                child: Container(
                  padding: const EdgeInsets.all(4),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.redAccent, width: 3),
                      borderRadius: BorderRadius.circular(5)),
                  child: const Icon(
                    Icons.shopping_cart_checkout,
                    color: Colors.redAccent,
                    size: 15,
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 15,
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 13, right: 13),
                child: SizedBox(
                  height: height / 3,
                  child: Stack(
                    alignment: Alignment.bottomLeft,
                    children: [
                      ImageSlideshow(
                        isLoop: true,
                        autoPlayInterval: 2000,
                        onPageChanged: (value) {
                          // print("Page change : $value");
                        },
                        children: [
                          for (int i = 0; i < Fruits().fruitsImage.length; i++)
                            Fruits().fruitsImage[i],
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Welcome",
                            style: TextStyle(
                                color: boxColor, fontSize: width / 10),
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
              const SizedBox(
                height: 15,
              ),
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
                                fontSize: height / 25,
                                fontWeight: FontWeight.bold),
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
                                fontSize: height / 25,
                                fontWeight: FontWeight.bold),
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
                                fontSize: height / 25,
                                fontWeight: FontWeight.bold),
                          ),
                          const Text(
                            "See All",
                            style: TextStyle(color: Colors.grey),
                          )
                        ],
                      ),
                    ),
                    GridView.builder(
                      padding: const EdgeInsets.only(top: 10),
                      itemCount: Fruits().fruitsImage.length,
                      physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                          childAspectRatio: .7,
                          mainAxisSpacing: 5,
                          crossAxisSpacing: 5
                        ),
                        itemBuilder: (_,index){
                          return Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Colors.white
                            ),
                            child: Column(
                              children: [
                                InkWell(
                                  onTap: (){
                                      Navigator.push(context, MaterialPageRoute(builder: (context)=> DetailsPage(i: index)));
                                    // Navigator.push(context, MaterialPageRoute(builder: (context)=> DetailsPage(i: i)));
                                  },
                                  child: SizedBox(
                                    height: width/3,
                                    child: Fruits().fruitsImage[index],
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(top: 8,left: 5),
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    Fruits().fruitsName[index],
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
                                        setState(() {
                                          itemCount++;
                                        });
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
                          );
                        },
                    )
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
