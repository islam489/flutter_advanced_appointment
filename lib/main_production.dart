import 'package:flutter/material.dart';
import 'package:flutter_advanced_appointment/core/Routing/app_router.dart';
import 'package:flutter_advanced_appointment/doc_app.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'core/DI/dependency_injection.dart';

void main() async{
  setupGetIt();
  await ScreenUtil.ensureScreenSize();
  runApp(DocApp(
    appRouter: AppRouter(),
  ));
}

