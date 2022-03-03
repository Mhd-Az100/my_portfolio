import 'package:flutter/material.dart';
import 'package:my_portfolio/constants.dart';
import 'package:my_portfolio/screen/main/components/animated_circular_progress.dart';

class Skills extends StatelessWidget {
  const Skills({
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
          child: Text('Skills', style: Theme.of(context).textTheme.subtitle2),
        ),
        Row(
          children: [
            Expanded(
              child: AnimatedCircularProgress(
                lebel: "Flutter",
                percentage: 0.75,
              ),
            ),
            const SizedBox(
              width: defaultPadding,
            ),
            Expanded(
              child: AnimatedCircularProgress(
                lebel: "GoogleMaps",
                percentage: 0.7,
              ),
            ),
            const SizedBox(
              width: defaultPadding,
            ),
            Expanded(
              child: AnimatedCircularProgress(
                lebel: "Firebase",
                percentage: 0.5,
              ),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
              child: AnimatedCircularProgress(
                lebel: "Clean Code",
                percentage: 0.75,
              ),
            ),
            const SizedBox(
              width: defaultPadding,
            ),
            Expanded(
              child: AnimatedCircularProgress(
                lebel: "Restfull Api",
                percentage: 0.77,
              ),
            ),
            const SizedBox(
              width: defaultPadding,
            ),
            Expanded(
              child: AnimatedCircularProgress(
                lebel: "Statemanagment",
                percentage: 0.7,
              ),
            ),
          ],
        )
      ],
    );
  }
}
