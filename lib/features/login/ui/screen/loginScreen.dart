import 'package:flutter/material.dart';
import 'package:flutter_advanced_appointment/core/Theming/styles.dart';
class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Text('Login Screen',
          textAlign: TextAlign.center,
          style: TextStyles.font32BlueBold)
      ),
    );
  }
}
