import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_flynn_app/utils/navigation/app_pages.dart';
import 'package:my_flynn_app/utils/navigation/app_routes.dart';
import 'package:my_flynn_app/utils/themes/text_theme_extension.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: AppTextTheme.textTheme
      ),
      initialRoute: Routes.SPLASH,
      getPages: AppPages.routes,
      smartManagement: SmartManagement.full, // auto-dispose controllers
      defaultTransition: Transition.fade,
    );
  }
}

