import 'package:flutter/material.dart';
import 'package:portofolio/view/home/sections/about_me.dart';
import 'package:portofolio/view/home/sections/featured_projects.dart';
import 'package:portofolio/view/home/sections/header.dart';
import 'package:portofolio/view/lets_contact.dart';
import 'package:portofolio/view/top_nav_bar.dart';

import '../widgets/horizontal_line.dart';

class Home extends StatelessWidget {
  const Home({super.key});

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
                  Header(),
                  const HorizontalLine(),
                  const SizedBox(height: 80),
                  FeaturedProjects(),
                  const HorizontalLine(),
                  AboutMe(),
                  const HorizontalLine(),
                  const SizedBox(height: 50),
                  LetsContact()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
