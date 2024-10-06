import 'package:flutter/material.dart';
import 'package:portofolio/constants/colors.dart';
// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;
import 'package:portofolio/view/widgets/custom_text.dart';
import 'package:portofolio/view/widgets/horizontal_line.dart';

// ignore: must_be_immutable
class PhoneProjectCard extends StatelessWidget {
  String? title, discription, year, role, githubLink, image;
  PhoneProjectCard({
    super.key,
    required this.title,
    required this.discription,
    required this.year,
    required this.role,
    required this.githubLink,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      height: 750,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: width,
            height: 300,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: forignColor,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Image.network(
              image!,
              // fit: BoxFit.contain,
            ),
          ),
          SizedBox(
            width: width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomText(
                  text: title!,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
                SizedBox(height: 15),
                CustomText(
                  text: discription!,
                  fontSize: 16,
                  color: Colors.grey,
                ),
                SizedBox(height: 30),
                CustomText(text: "Project Info"),
                const HorizontalLine(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(
                      text: "Year",
                      fontSize: 16,
                    ),
                    CustomText(
                      text: year!,
                      fontSize: 14,
                      color: Colors.grey,
                    ),
                  ],
                ),
                const HorizontalLine(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(
                      text: "Role",
                      fontSize: 16,
                    ),
                    CustomText(
                      text: role!,
                      fontSize: 14,
                      color: Colors.grey,
                    ),
                  ],
                ),
                const HorizontalLine(),
                SizedBox(height: 20),
                GestureDetector(
                  onTap: () => html.window.open(githubLink!, '_blank'),
                  child: CustomText(
                    text: "SEE ON GITHUB",
                    fontSize: 14,
                    color: primaryColor,
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
