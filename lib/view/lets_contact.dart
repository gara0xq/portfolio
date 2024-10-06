import 'package:flutter/material.dart';
import 'package:portofolio/constants/colors.dart';
import 'package:portofolio/view/widgets/custom_input_field.dart';
import 'package:portofolio/view/widgets/custom_text.dart';
// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;

class LetsContact extends StatelessWidget {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController subjectController = TextEditingController();
  final TextEditingController messageController = TextEditingController();

  // Global key for the form validation
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  LetsContact({super.key});

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
                        'robertgarcia@gmail.com',
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
                        onPressed: () {},
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
                    onTap: () => html.window.open('https://www.google.com', '_blank'),
                  ),
                  SizedBox(width: 10),
                  GestureDetector(
                    child: SizedBox(
                      height: 30,
                      width: 30,
                      child: Image.asset('assets/linkedin.png'),
                    ), // Replace with actual icon
                    onTap: () => html.window.open('https://www.google.com', '_blank'),
                  ),
                ],
              ),
            ],
          ),
        ),
        Expanded(
          child: Form(
            key: _formKey, // Form key to validate
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // CustomTextField for Name
                CustomInputField(
                  label: 'Name',
                  controller: nameController,
                ),

                // CustomTextField for Email with email validation
                CustomInputField(
                  label: 'Email',
                  controller: emailController,
                  validator: null,
                ),

                // CustomTextField for Subject
                CustomInputField(
                  label: 'Subject',
                  controller: subjectController,
                ),

                // CustomTextField for Message with multiple lines
                CustomInputField(
                  label: 'Message',
                  controller: messageController,
                  maxLines: 5,
                ),

                const SizedBox(height: 20),
                TextButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      // If all validations pass
                    }
                  },
                  child: Container(
                    height: 40,
                    width: 120,
                    decoration: BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: CustomText(
                      text: 'SUBMIT',
                      color: Colors.black,
                      alignment: Alignment.center,
                    ),
                  ),
                ),
                SizedBox(height: 40),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
