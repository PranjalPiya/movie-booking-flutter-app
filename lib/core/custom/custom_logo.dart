import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

Widget customLogo({
  final bool? repeat,
  final bool? animate,
  final double? height,
  final double? width,
}) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Hero(
        tag: 'logo',
        child: LottieBuilder.asset(
          "assets/animation/movie_splash.json",
          height: height,
          width: width,
          repeat: repeat,
          animate: animate,
          fit: BoxFit.cover,
        ),
      ),
      RichText(
          text: TextSpan(children: [
        const TextSpan(
            text: 'Movie',
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 25, letterSpacing: .5)),
        TextSpan(
            text: 'X',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 27,
                color: Colors.red.shade300)),
      ]))
    ],
  );
}
