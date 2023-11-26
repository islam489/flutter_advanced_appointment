import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_advanced_appointment/core/Helpers/extensions.dart';
import 'package:flutter_advanced_appointment/core/Theming/colors.dart';
import 'package:flutter_advanced_appointment/core/Theming/styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/Routing/routes.dart';
class GetStartedButton extends StatelessWidget {
  const GetStartedButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        context.pushNamed(Routes.loginScreen);
      },
      child: Container(
        width: double.infinity,
        height: 52.h,
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
        decoration: ShapeDecoration(
          color: ColorsManager.mainBlue,
          shape: RoundedRectangleBorder(
            side: const BorderSide(width: 1, color: ColorsManager.mainBlue),
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Get Started',
              textAlign: TextAlign.center,
              style: TextStyles.font16WeightSemiBold,
            ),
          ],
        ),
      ),
    );
  }
}
