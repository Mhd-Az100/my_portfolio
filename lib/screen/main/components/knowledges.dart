// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_portfolio/constants.dart';

class Knowledges extends StatelessWidget {
  const Knowledges({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text(
            'Knowledge',
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        KnowledgeText(
          text: 'Flutter,Dart',
        ),
        KnowledgeText(
          text: 'Convert Design to Code',
        ),
        KnowledgeText(
          text: 'Statemanagment',
        ),
      ],
    );
  }
}

class KnowledgeText extends StatelessWidget {
  KnowledgeText({Key? key, this.text}) : super(key: key);
  @required
  String? text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding),
      child: Row(
        children: [
          SvgPicture.asset(
            'assets/icons/check.svg',
            color: primaryColor,
          ),
          const SizedBox(
            width: defaultPadding / 2,
          ),
          Text(text!),
        ],
      ),
    );
  }
}
