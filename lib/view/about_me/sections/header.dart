import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portofolio/constants/colors.dart';
// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;
import 'package:portofolio/view/widgets/custom_text.dart';

import '../../../constants/links.dart';

class AboutMeHeader extends StatelessWidget {
  const AboutMeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      // height: 200,
      margin: EdgeInsets.symmetric(vertical: 70),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          width > 700
              ? Expanded(
                  child: CustomText(
                  text: "ABOUT ME",
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ))
              : const SizedBox(),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                width < 700
                    ? CustomText(
                        text: "ABOUT ME",
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                      )
                    : const SizedBox(),
                SizedBox(height: 20),
                CustomText(
                  text: "I am a front-end developer based in Sydney. Has Mechanical Engineering background.",
                  fontSize: 20,
                ),
                SizedBox(height: 20),
                CustomText(
                  text:
                      "I am a front-end developer based in Sydney looking for exciting opportunities. Has Mechanical Engineering background. Likes to focus on accessibility when developing. Passionate and curious about solving problems. Currently, I’m exploring Reactjs, Webflow and a bit of Designing. While I am not programming, I enjoy playing football, photography and playing Valorant. Learning more to improve skill.",
                  fontSize: 14,
                  color: Colors.grey,
                ),
                SizedBox(height: 20),
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
                          GestureDetector(
                            onTap: () => html.window.open(resume, '_blank'),
                            child: CustomText(
                              text: "RESUME",
                              color: Colors.black,
                              alignment: Alignment.center,
                              fontSize: 16,
                            ),
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
                    GestureDetector(
                      onTap: () => html.window.open(linkedin, '_blank'),
                      child: Container(
                          width: 50,
                          height: 50,
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(shape: BoxShape.circle, color: forignColor),
                          child: Image.asset("assets/linkedin.png")),
                    ),
                    SizedBox(width: 15),
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
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
