import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portofolio/constants/colors.dart';
import 'package:portofolio/view/widgets/custom_text.dart';

class MyExperience extends StatelessWidget {
  const MyExperience({super.key});

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
                  text: "MY EXPERIENCE",
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
                        text: "MY EXPERIENCE",
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                      )
                    : const SizedBox(),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(
                      text: "Flutter Intern",
                      fontSize: 18,
                    ),
                    CustomText(
                      text: "Aug 2024 - Sep 2024",
                      fontSize: 16,
                      color: Colors.grey,
                    ),
                  ],
                ),
                SizedBox(height: 20),
                CustomText(
                  text: "IBM",
                  color: primaryColor,
                  fontSize: 18,
                ),
                CustomText(
                  text:
                      "I am a front-end developer based in Sydney looking for exciting opportunities. Has Mechanical Engineering background. Likes to focus on accessibility when developing. Passionate and curious about solving problems. Currently, I’m exploring Reactjs, Webflow and a bit of Designing. While I am not programming, I enjoy playing football, photography and playing Valorant. Learning more to improve skill.",
                  fontSize: 14,
                  color: Colors.grey,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
