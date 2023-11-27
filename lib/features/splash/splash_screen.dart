import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_advanced_appointment/core/Helpers/extensions.dart';
import 'package:flutter_advanced_appointment/features/onBoarding/ui/screen/onboardingScreen.dart';

import '../../core/Routing/routes.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  Widget build(BuildContext context) {
    return  AnimatedSplashScreen(
      splashIconSize: 800.0,
      duration: 2500,
        splash: 'assets/images/splash.png',
        nextScreen: const OnBoardingScreen(),
      splashTransition: SplashTransition.slideTransition,
    );
  }
}
