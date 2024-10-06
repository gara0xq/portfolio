import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portofolio/view/about_me/about_me.dart';
import 'package:portofolio/view/home/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Portofolio',
      initialRoute: '/home',
      getPages: [
        GetPage(name: "/home", page: () => Home()),
        GetPage(name: "/about_me", page: () => Home()),
      ],
    );
  }
}
