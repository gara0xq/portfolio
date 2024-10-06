import 'package:flutter/material.dart';

import 'widgets/custom_text.dart';

class TopNavBar extends StatelessWidget {
  const TopNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 15, horizontal: width / 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CustomText(
            text: "ALI AHMED",
            fontSize: 26,
            fontWeight: FontWeight.bold,
            color: Colors.grey.shade400,
          ),
          width > 600
              ? SizedBox(
                  width: 300,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CustomText(
                        text: "Projects",
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                        color: Colors.grey.shade300,
                      ),
                      CustomText(
                        text: "About",
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                        color: Colors.grey.shade300,
                      ),
                      CustomText(
                        text: "Contact",
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                        color: Colors.grey.shade300,
                      ),
                    ],
                  ),
                )
              : Icon(
                  Icons.menu,
                  color: Colors.grey.shade300,
                  size: 30,
                ),
        ],
      ),
    );
  }
}
