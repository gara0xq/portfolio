import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:portofolio/constants/colors.dart';
import 'package:portofolio/constants/links.dart';
// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;
import '../../widgets/custom_text.dart';

class Header extends StatefulWidget {
  const Header({super.key});

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      alignment: Alignment.centerLeft,
      height: width > 700 ? 700 : 1300,
      child: Row(
        children: [
          Expanded(
            child: SizedBox(
              height: width > 700 ? 500 : 1050,
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
                      SizedBox(width: 7),
                      GestureDetector(
                        onTap: () => html.window.open(linkedin, '_blank'),
                        child: Container(
                            width: 50,
                            height: 50,
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(shape: BoxShape.circle, color: forignColor),
                            child: Image.asset("assets/linkedin.png")),
                      ),
                      SizedBox(width: 7),
                      GestureDetector(
                        onTap: () => html.window.open(github, '_blank'),
                        child: Container(
                          width: 50,
                          height: 50,
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(shape: BoxShape.circle, color: forignColor),
                          child: Image.asset("assets/github.png"),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 40),
                  width <= 700
                      ? Padding(
                          padding: EdgeInsets.all(30),
                          child: Container(
                            height: 600,
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: forignColor,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Image.asset(
                              'assets/user.jpg',
                              // fit: BoxFit.fill,
                            ),
                          ),
                        )
                      : SizedBox(),
                ],
              ),
            ),
          ),
          width > 700
              ? Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(30),
                    child: Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: forignColor,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Image.asset(
                        'assets/user.jpg',
                        // fit: BoxFit.fill,
                      ),
                    ),
                  ),
                )
              : SizedBox(),
        ],
      ),
    );
  }
}
