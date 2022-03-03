import 'package:flutter/material.dart';
import 'package:my_portfolio/constants.dart';
import 'package:my_portfolio/screen/main/components/animated_liner_progress.dart';

class Coding extends StatelessWidget {
  const Coding({
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
            'Coding',
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        AnimatedLinerProgress(
          lebel: 'Dart',
          percentage: 0.8,
        ),
        AnimatedLinerProgress(
          lebel: 'C#',
          percentage: 0.65,
        ),
        AnimatedLinerProgress(
          lebel: 'JS',
          percentage: 0.65,
        ),
        AnimatedLinerProgress(
          lebel: 'Sql',
          percentage: 0.65,
        ),
        AnimatedLinerProgress(
          lebel: 'php',
          percentage: 0.4,
        ),
        AnimatedLinerProgress(
          lebel: 'Html',
          percentage: 0.5,
        ),
        AnimatedLinerProgress(
          lebel: 'Css',
          percentage: 0.5,
        ),
      ],
    );
  }
}
