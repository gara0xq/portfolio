import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:portofolio/constants/colors.dart';

import '../../widgets/custom_text.dart';

class Header extends StatefulWidget {
  const Header({super.key});

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  double ss = 200;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      height: 670,
      child: SizedBox(
        width: 600,
        height: 350,
        child: Column(
          children: [
            CustomText(
              text: "HI, I AM\nALI AHMED",
              fontSize: 60,
              fontWeight: FontWeight.bold,
              alignment: Alignment.centerLeft,
            ),
            SizedBox(height: 5),
            CustomText(
              text:
                  "A Sydney based front-end developer passionate about building accessible and user friendly websites.",
              fontWeight: FontWeight.w100,
              fontSize: 16,
              color: Colors.grey,
            ),
            SizedBox(height: 40),
            Row(
              children: [
                Container(
                  height: 50,
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: primaryColor,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CustomText(
                        text: "CONTACT ME",
                        color: Colors.black,
                        alignment: Alignment.center,
                        fontSize: 16,
                      ),
                      SizedBox(width: 15),
                      Container(
                        width: 7,
                        height: 7,
                        decoration: BoxDecoration(shape: BoxShape.circle, color: forignColor),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 15),
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(shape: BoxShape.circle, color: forignColor),
                  child: Icon(
                    Icons.facebook,
                    color: primaryColor,
                  ),
                ),
                SizedBox(width: 15),
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(shape: BoxShape.circle, color: forignColor),
                  child: Icon(
                    Icons.facebook,
                    color: primaryColor,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
