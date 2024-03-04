import 'package:flutter/material.dart';
import 'package:portfolio/components/animated_progress_indicator.dart';
import 'package:portfolio/constants.dart';

class Skills extends StatelessWidget {
  const Skills({
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
          child: Text('Skills', style: Theme.of(context).textTheme.subtitle2),
        ),
        const Row(
          children: [
            Expanded(
              child: AnimatedCircularProgressIndicator(
                persentage: 0.8,
                lable: "Flutter",
              ),
            ),
            SizedBox(width: defaultPadding),
            Expanded(
              child: AnimatedCircularProgressIndicator(
                persentage: 0.72,
                lable: "Local Database",
              ),
            ),
            SizedBox(width: defaultPadding),
            Expanded(
              child: AnimatedCircularProgressIndicator(
                persentage: 0.62,
                lable: "Firebase",
              ),
            ),
          ],
        ),
      ],
    );
  }
}
