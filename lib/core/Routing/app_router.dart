
import 'package:flutter/material.dart';
import 'package:flutter_advanced_appointment/core/Routing/routes.dart';
import 'package:flutter_advanced_appointment/features/login/ui/screen/loginScreen.dart';
import 'package:flutter_advanced_appointment/features/onBoarding/ui/screen/onboardingScreen.dart';
import 'package:flutter_advanced_appointment/features/splash/splash_screen.dart';

class AppRouter {
  Route generateRoute (RouteSettings settings) {
    switch (settings.name){
      case Routes.splashScreen :
        return MaterialPageRoute(
            builder: (_) => const SplashScreen(),
        );
      case Routes.onBoardingScreen :
        return MaterialPageRoute(
          builder: (_) => const OnBoardingScreen(),
        );
      case Routes.loginScreen :
        return MaterialPageRoute(
          builder: (_) => const LoginScreen(),
        );
      default :
        return MaterialPageRoute(
          builder: (_) =>  Scaffold(
            body: Center(
              child: Text('No Route Found ${settings.name}'),
            ),
          ),
        );

    }

  }
}