import 'package:flutter/material.dart';
import 'package:flutter_advanced_appointment/core/Routing/app_router.dart';
import 'package:flutter_advanced_appointment/core/Routing/routes.dart';
import 'package:flutter_advanced_appointment/core/Theming/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class DocApp extends StatelessWidget {
  final AppRouter appRouter;
  const DocApp({Key? key, required this.appRouter}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  ScreenUtilInit(
      designSize: const Size(375,812) ,
      minTextAdapt: true,
      child: MaterialApp(
        title: 'DocApp',
        theme: ThemeData(
          primaryColor:ColorsManager.mainBlue,
          scaffoldBackgroundColor: Colors.white
        ),
        onGenerateRoute: appRouter.generateRoute,
        debugShowCheckedModeBanner: false,
        initialRoute: Routes.splashScreen,
      ),
      

    );
  }
}
