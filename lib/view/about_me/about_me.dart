import 'package:flutter/material.dart';
import 'package:portofolio/view/about_me/sections/header.dart';
import 'package:portofolio/view/about_me/sections/my_capabilities.dart';
import 'package:portofolio/view/widgets/horizontal_line.dart';

import '../lets_contact.dart';
import '../top_nav_bar.dart';
import 'sections/my_experience.dart';

class AboutMeScreen extends StatelessWidget {
  const AboutMeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xFF0A0A0A),
      body: SingleChildScrollView(
        child: Column(
          children: [
            TopNavBar(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width / 10),
              child: Column(
                children: [
                  AboutMeHeader(),
                  const HorizontalLine(),
                  MyCapabilities(),
                  const HorizontalLine(),
                  MyExperience(),
                  const HorizontalLine(),
                  const SizedBox(height: 50),
                  LetsContact(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
