import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/responsive.dart';

import 'animated_counter.dart';
import 'heigh_light.dart';

class HighLightsInfo extends StatelessWidget {
  const HighLightsInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: Responsive.isMobileLarge(context)
          ? const Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    HeighLight(
                      counter: AnimatedCounter(
                        value: 119,
                        text: 'K+',
                      ),
                      lable: "Subcribers",
                    ),
                    HeighLight(
                      counter: AnimatedCounter(
                        value: 40,
                        text: '+',
                      ),
                      lable: "Videos",
                    ),
                  ],
                ),
                SizedBox(height: defaultPadding),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    HeighLight(
                      counter: AnimatedCounter(
                        value: 30,
                        text: '+',
                      ),
                      lable: "GitHub Projects",
                    ),
                    HeighLight(
                      counter: AnimatedCounter(
                        value: 13,
                        text: 'K+',
                      ),
                      lable: "Stars",
                    ),
                  ],
                )
              ],
            )
          : const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                HeighLight(
                  counter: AnimatedCounter(
                    value: 119,
                    text: 'K+',
                  ),
                  lable: "Subcribers",
                ),
                HeighLight(
                  counter: AnimatedCounter(
                    value: 40,
                    text: '+',
                  ),
                  lable: "Videos",
                ),
                HeighLight(
                  counter: AnimatedCounter(
                    value: 30,
                    text: '+',
                  ),
                  lable: "GitHub Projects",
                ),
                HeighLight(
                  counter: AnimatedCounter(
                    value: 13,
                    text: 'K+',
                  ),
                  lable: "Stars",
                ),
              ],
            ),
    );
  }
}
