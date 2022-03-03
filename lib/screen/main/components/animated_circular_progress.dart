// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:my_portfolio/constants.dart';

class AnimatedCircularProgress extends StatelessWidget {
  AnimatedCircularProgress({
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
      child: Column(
        children: [
          AspectRatio(
            aspectRatio: 1,
            child: TweenAnimationBuilder(
                tween: Tween<double>(begin: 0, end: percentage),
                duration: defaultDuration,
                builder: (context, double value, child) => Stack(
                      fit: StackFit.expand,
                      children: [
                        CircularProgressIndicator(
                          value: value,
                          color: primaryColor,
                          backgroundColor: darkColor,
                        ),
                        Center(
                          child: Text(
                            (value * 100).toInt().toString() + " %",
                            style: Theme.of(context).textTheme.subtitle1,
                          ),
                        ),
                      ],
                    )),
          ),
          const SizedBox(
            height: defaultPadding / 2,
          ),
          FittedBox(
            child: Text(
              lebel!,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context).textTheme.subtitle2,
            ),
          ),
        ],
      ),
    );
  }
}
