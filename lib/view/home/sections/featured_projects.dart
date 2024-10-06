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
        SizedBox(
          height: width > 700 ? (600 * 3) + 200 : (750 * 3) + 200,
          child: ListView.separated(
            separatorBuilder: (context, index) => const HorizontalLine(),
            itemCount: 3,
            itemBuilder: (_, i) {
              return width > 700
                  ? WebProjectCard(
                      title: "Promotional landing page for our favorite show",
                      discription:
                          "Teamed up with a designer to breathe life into a promotional webpage for our beloved show, Adventure Time. Delivered a fully responsive design with dynamic content capabilities, seamlessly integrating a newsletter feature to keep fans updated with the latest adventures.",
                      year: "2023",
                      role: "Full Stack",
                      githubLink: "www.ss.com",
                    )
                  : PhoneProjectCard(
                      title: "Promotional landing page for our favorite show",
                      discription:
                          "Teamed up with a designer to breathe life into a promotional webpage for our beloved show, Adventure Time. Delivered a fully responsive design with dynamic content capabilities, seamlessly integrating a newsletter feature to keep fans updated with the latest adventures.",
                      year: "2023",
                      role: "Full Stack",
                      githubLink: "www.ss.com",
                    );
            },
          ),
        ),
        SizedBox(height: 15),

        // ProjectCard(),
      ],
    );
  }
}
