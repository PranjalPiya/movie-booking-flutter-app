import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_learn_one/core/custom/custom_logo.dart';
import 'package:flutter_learn_one/presentation/login/screen/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (_) => const LoginScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        body: Center(
            child: customLogo(
                animate: true, height: 170, width: 200, repeat: true)));
  }
}
