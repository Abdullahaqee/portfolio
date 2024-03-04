import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';

class HeighLight extends StatelessWidget {
  const HeighLight({
    super.key,
    required this.counter,
    this.lable,
  });

  final Widget counter;
  final String? lable;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        counter,
        const SizedBox(width: defaultPadding / 2),
        Text(lable!, style: Theme.of(context).textTheme.titleSmall),
      ],
    );
  }
}
