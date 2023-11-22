import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widgets/doc_logo_and_name.dart';
class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:  SafeArea(
          child: SingleChildScrollView(
            child: Padding(
                padding:EdgeInsets.only(
                    top: 30.h,
                    bottom: 30.h
                ),
                    child:  const Column(
                      children: [
                        DocLogoAndName(),
                      ],
                    ),
            ),

          ))
      );

  }
}
