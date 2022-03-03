// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:my_portfolio/screen/home/components/My_projects.dart';
import 'package:my_portfolio/screen/home/components/home_bannar.dart';
import 'package:my_portfolio/screen/main/main_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainScreen(
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        HomeBannar(),
        MyProjects(),
      ],
    );
  }
}
