import 'package:flutter/material.dart';
// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;
import 'package:portofolio/view/widgets/custom_text.dart';
import 'package:portofolio/view/widgets/horizontal_line.dart';

// ignore: must_be_immutable
class WebProjectCard extends StatelessWidget {
  String? title, discription, year, role, githubLink, image;
  WebProjectCard({
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
    double cardWidth = width - width / 5;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      height: 600,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: cardWidth / 2 - 20,
            // margin: EdgeInsets.symmetric(vertical: 10),
            padding: EdgeInsets.all(70),
            decoration: BoxDecoration(
              color: Color.fromARGB(30, 200, 200, 200),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Image.asset(
              image!,
              // fit: BoxFit.,
            ),
          ),
          SizedBox(
            width: cardWidth / 2 - 20,
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
                    color: Color(0xFFD3E97A),
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
