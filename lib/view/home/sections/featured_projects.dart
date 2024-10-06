import 'package:flutter/material.dart';
import 'package:portofolio/view/widgets/horizontal_line.dart';
import 'package:portofolio/view/widgets/phone_project_card.dart';
import 'package:portofolio/view/widgets/web_project_card.dart';

import '../../widgets/custom_text.dart';

class FeaturedProjects extends StatelessWidget {
  const FeaturedProjects({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        CustomText(
          text: "Featured Projects",
          fontSize: 40,
          fontWeight: FontWeight.bold,
        ),
        const SizedBox(height: 15),
        CustomText(
          text: "Here are some of the selected projects that showcase my passion for\nfront-end development.",
          fontSize: 16,
          color: Colors.grey,
        ),
        const SizedBox(height: 50),
        width > 700
            ? Column(
                children: [
                  WebProjectCard(
                    title: "Fashion E-Commerce App",
                    discription:
                        "A modern shopping app that allows users to browse, search, and purchase fashion items with secure payments, wishlists, and real-time order tracking. Built with Flutter and integrated with Firebase and Sqflite.",
                    year: "2024",
                    role: "Full Stack",
                    githubLink: "https://github.com/gara0xq/E-Commerce",
                    image: "assets/e-commerce.png",
                  ),
                  WebProjectCard(
                    title: "Banking App (PUNCH)",
                    discription:
                        "A secure banking app enabling users to manage accounts, view transactions, and make transfers with advanced security features and real-time updates. Developed with Flutter and integrated with Restfull API.",
                    year: "2024",
                    role: "Team Manager",
                    githubLink: "https://github.com/gara0xq/Punch",
                    image: "assets/punch.png",
                  ),
                  WebProjectCard(
                    title: "Local Music App (Musify)",
                    discription:
                        "A local music streaming app that lets users discover, stream, and create playlists of local artists. Built with Flutter, focusing on promoting regional music talent (Still under work).",
                    year: "2024",
                    role: "Full Stack",
                    githubLink: "https://github.com/gara0xq/musify",
                    image: "assets/spotify.png",
                  ),
                ],
              )
            : Column(
                children: [
                  PhoneProjectCard(
                    title: "Fashion E-Commerce App",
                    discription:
                        "A modern shopping app that allows users to browse, search, and purchase fashion items with secure payments, wishlists, and real-time order tracking. Built with Flutter and integrated with Firebase and Sqflite.",
                    year: "2024",
                    role: "Full Stack",
                    githubLink: "https://github.com/gara0xq/E-Commerce",
                    image: "assets/e-commerce.png",
                  ),
                  PhoneProjectCard(
                    title: "Banking App (PUNCH)",
                    discription:
                        "A secure banking app enabling users to manage accounts, view transactions, and make transfers with advanced security features and real-time updates. Developed with Flutter and integrated with Restfull API.",
                    year: "2024",
                    role: "Team Manager",
                    githubLink: "https://github.com/gara0xq/Punch",
                    image: "assets/punch.png",
                  ),
                  PhoneProjectCard(
                    title: "Local Music App (Musify)",
                    discription:
                        "A local music streaming app that lets users discover, stream, and create playlists of local artists. Built with Flutter, focusing on promoting regional music talent (Still under work).",
                    year: "2024",
                    role: "Full Stack",
                    githubLink: "https://github.com/gara0xq/musify",
                    image: "assets/spotify.png",
                  ),
                ],
              ),

        SizedBox(height: 15),

        // ProjectCard(),
      ],
    );
  }
}
