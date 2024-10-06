import 'package:flutter/material.dart';
import 'package:portofolio/constants/colors.dart';
import 'package:portofolio/constants/links.dart';
import 'package:portofolio/view/widgets/custom_text.dart';
// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;

class LetsContact extends StatelessWidget {
  const LetsContact({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Column(
            children: [
              CustomText(
                text: "LET'S CONNECT",
                fontSize: 44,
                fontWeight: FontWeight.bold,
              ),
              SizedBox(height: 20),
              Column(
                children: [
                  Row(
                    children: [
                      CustomText(
                        text: 'Say hello at  ',
                        color: Colors.grey,
                      ),
                      SelectableText(
                        email,
                        style: TextStyle(color: primaryColor, fontSize: 16),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      CustomText(
                        text: "For more info, here's my",
                        color: Colors.grey,
                        fontSize: 16,
                      ),
                      TextButton(
                        onPressed: () => html.window.open(resume, '_blank'),
                        child: CustomText(
                          text: "Resume",
                          color: primaryColor,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  GestureDetector(
                    child: SizedBox(
                      height: 30,
                      width: 30,
                      child: Image.asset('assets/github.png'),
                    ), // Replace with actual icon
                    onTap: () => html.window.open(github, '_blank'),
                  ),
                  SizedBox(width: 10),
                  GestureDetector(
                    child: SizedBox(
                      height: 30,
                      width: 30,
                      child: Image.asset('assets/linkedin.png'),
                    ), // Replace with actual icon
                    onTap: () => html.window.open(linkedin, '_blank'),
                  ),
                ],
              ),
              SizedBox(height: 30),
            ],
          ),
        ),
      ],
    );
  }
}
