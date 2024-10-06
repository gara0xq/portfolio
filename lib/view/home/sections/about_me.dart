import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portofolio/constants/colors.dart';
import 'package:portofolio/view/widgets/custom_text.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({super.key});

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
                SizedBox(
                  width: 180,
                  child: TextButton(
                    onPressed: () {
                      Get.toNamed("/about_me");
                    },
                    child: CustomText(
                      text: "MORE ABOUT ME",
                      fontSize: 14,
                      color: primaryColor,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
