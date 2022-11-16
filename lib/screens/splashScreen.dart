import 'package:flutter/material.dart';

import '../ItemData/colorsCollection.dart';
import 'mainScreen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: bgColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'images/cycle/cycle.png',
              height: height / 3,
              width: width / 1.3,
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              "Buy Fresh Groceries",
              style: TextStyle(
                  color: mainColor, fontSize: 23, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 25,
            ),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>   MainScreen()));
              },
              child: Container(
                padding: EdgeInsets.only(
                    left: width / 15,
                    right: width / 15,
                    top: width / 50,
                    bottom: width / 50),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20), color: mainColor),
                child: Text(
                  "Get Started",
                  style: TextStyle(color: boxColor, fontSize: width / 18),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
