import 'package:flutter/material.dart';
import 'package:portfolio/components/animated_progress_indicator.dart';
import 'package:portfolio/constants.dart';

class Coding extends StatelessWidget {
  const Coding({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text(
            'Codding',
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        const AnimatedLinearProgressIndicator(
          percentage: 0.7,
          lable: "Dart",
        ),
        const AnimatedLinearProgressIndicator(
          percentage: 0.68,
          lable: "Python",
        ),
        const AnimatedLinearProgressIndicator(
          percentage: 0.9,
          lable: "HTML",
        ),
        const AnimatedLinearProgressIndicator(
          percentage: 0.68,
          lable: "CSS",
        ),
        const AnimatedLinearProgressIndicator(
          percentage: 0.58,
          lable: "JavaScript",
        ),
      ],
    );
  }
}
