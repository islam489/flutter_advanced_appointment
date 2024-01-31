import 'package:flutter/material.dart';
import 'package:flutter_advanced_appointment/core/Routing/app_router.dart';
import 'package:flutter_advanced_appointment/doc_app.dart';
import 'core/DI/dependency_injection.dart';

void main() {
  setupGetIt();
  runApp( DocApp(
    appRouter: AppRouter(),
  ));
}





