// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:my_portfolio/constants.dart';

class AnimatedLinerProgress extends StatelessWidget {
  AnimatedLinerProgress({
    Key? key,
    required this.lebel,
    required this.percentage,
  }) : super(key: key);
  double? percentage;
  String? lebel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding),
      child: TweenAnimationBuilder(
          tween: Tween<double>(begin: 0, end: percentage!),
          duration: defaultDuration,
          builder: (context, double value, child) => Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        lebel!,
                        style: Theme.of(context).textTheme.subtitle2,
                      ),
                      Text((value * 100).toInt().toString() + '%')
                    ],
                  ),
                  const SizedBox(height: defaultPadding / 2),
                  LinearProgressIndicator(
                    color: primaryColor,
                    backgroundColor: darkColor,
                    value: value,
                  ),
                ],
              )),
    );
  }
}
