import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/responsive.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: Responsive.isMobile(context) ? 2.5 : 3,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset('assets/images/bg.jpeg', fit: BoxFit.cover),
          Container(color: darkColor.withOpacity(0.66)),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Discover my Amazing \nArt Space!',
                  style: Responsive.isDesktop(context)
                      ? Theme.of(context).textTheme.headline3!.copyWith(
                          fontWeight: FontWeight.bold, color: Colors.white)
                      : Theme.of(context).textTheme.headline5!.copyWith(
                          fontWeight: FontWeight.bold, color: Colors.white),
                ),
                if (!Responsive.isMobile(context))
                  const SizedBox(height: defaultPadding / 2),
                const MyBuildAnimatedText(),
                const SizedBox(height: defaultPadding),
                if (!Responsive.isMobile(context))
                  ElevatedButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                          horizontal: defaultPadding * 2,
                          vertical: defaultPadding),
                      backgroundColor: primaryColor,
                    ),
                    child: const Text(
                      'EXPLORE NOW',
                      style: TextStyle(color: darkColor),
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class MyBuildAnimatedText extends StatelessWidget {
  const MyBuildAnimatedText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: Theme.of(context).textTheme.titleMedium!,
      maxLines: 1,
      child: Row(
        children: [
          if (!Responsive.isMobileLarge(context)) const FlutterCodedText(),
          if (!Responsive.isMobileLarge(context))
            const SizedBox(width: defaultPadding / 2),
          const Text('I build '),
          Responsive.isMobile(context)
              ? Expanded(child: AnimatedText())
              : AnimatedText(),
          if (!Responsive.isMobileLarge(context))
            const SizedBox(width: defaultPadding / 2),
          if (!Responsive.isMobileLarge(context)) const FlutterCodedText(),
        ],
      ),
    );
  }
}

class AnimatedText extends StatelessWidget {
  const AnimatedText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedTextKit(
      animatedTexts: [
        TyperAnimatedText(
          'responsive web and mobile app.',
          speed: const Duration(milliseconds: 60),
        ),
        TyperAnimatedText(
          'complete e-commerce app UI.',
          speed: const Duration(milliseconds: 60),
        ),
        TyperAnimatedText(
          'Chat app with dark and light theme.',
          speed: const Duration(milliseconds: 60),
        ),
      ],
    );
  }
}

class FlutterCodedText extends StatelessWidget {
  const FlutterCodedText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text.rich(
      TextSpan(
        text: '<',
        children: [
          TextSpan(text: 'flutter', style: TextStyle(color: primaryColor)),
          TextSpan(text: '>')
        ],
      ),
    );
  }
}
