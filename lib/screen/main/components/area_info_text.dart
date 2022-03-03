// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:my_portfolio/constants.dart';

class AreaInfoText extends StatelessWidget {
  AreaInfoText({
    this.text,
    this.title,
    Key? key,
  }) : super(key: key);
  String? title, text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(defaultPadding / 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title!,
            style: const TextStyle(color: Colors.white),
          ),
          Text(text!),
        ],
      ),
    );
  }
}
