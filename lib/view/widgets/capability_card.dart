import 'package:flutter/material.dart';
import 'package:portofolio/view/widgets/custom_text.dart';

class CapabilityCard extends StatelessWidget {
  String title;
  CapabilityCard({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          width: 1,
          color: Colors.grey,
        ),
      ),
      child: CustomText(
        text: title,
        fontSize: 14,
      ),
    );
  }
}
