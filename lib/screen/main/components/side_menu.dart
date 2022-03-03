// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:my_portfolio/constants.dart';
import 'package:my_portfolio/screen/main/components/area_info_text.dart';
import 'package:my_portfolio/screen/main/components/coding.dart';
import 'package:my_portfolio/screen/main/components/knowledges.dart';
import 'package:my_portfolio/screen/main/components/linkes.dart';
import 'package:my_portfolio/screen/main/components/skills.dart';

import 'my_info.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            const MyInfo(),
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(defaultPadding),
                child: Column(
                  children: [
                    AreaInfoText(
                      title: 'Country',
                      text: 'Syria',
                    ),
                    AreaInfoText(
                      title: 'City',
                      text: 'Damascus',
                    ),
                    const Skills(),
                    const SizedBox(
                      height: defaultPadding,
                    ),
                    const Coding(),
                    const Knowledges(),
                    const Linkes(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
