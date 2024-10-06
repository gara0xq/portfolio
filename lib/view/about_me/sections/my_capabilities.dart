import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portofolio/constants/colors.dart';
import 'package:portofolio/view/widgets/capability_card.dart';
import 'package:portofolio/view/widgets/custom_text.dart';

class MyCapabilities extends StatelessWidget {
  const MyCapabilities({super.key});

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
                  text: "MY CAPABILITIES",
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
                        text: "MY CAPABILITIES",
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                      )
                    : const SizedBox(),
                SizedBox(height: 20),
                CustomText(
                  text:
                      "I am always looking to add more skills.Morbi egestas neque eu blandit fermentum. Nulla ac lobortis ligula. Pellentesque ac ex at purus faucibus tristique ut et dolor.",
                  fontSize: 14,
                  color: Colors.grey,
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    CapabilityCard(title: "DART"),
                    CapabilityCard(title: "FLUTTER"),
                    CapabilityCard(title: "FIGMA"),
                  ],
                ),
                Row(
                  children: [
                    CapabilityCard(title: "PYTHON"),
                    CapabilityCard(title: "DJANGO"),
                    CapabilityCard(title: "JQUERY"),
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
