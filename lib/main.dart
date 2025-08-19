import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_flynn_app/localization/app_translations.dart';
import 'package:my_flynn_app/utils/navigation/app_pages.dart';
import 'package:my_flynn_app/utils/navigation/app_routes.dart';
import 'package:my_flynn_app/utils/themes/app_text_theme.dart';
import 'package:my_flynn_app/utils/themes/color_scheme_extension.dart';


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
        textTheme: AppTextTheme.textTheme,
        extensions: <ThemeExtension<dynamic>>[
          const AppColors(
            mainPurple: Color(0xFF7D5964),
            customGray: Color(0xFF2E2E2E),
            white: Color(0xFFFFFFFF),
            borderColor: Color(0xFFE0E0E0),
          ),
        ],
      ),
      initialRoute: Routes.SPLASH,
      getPages: AppPages.routes,
      translations: AppTranslations(),
      locale: Locale('ko', 'KR'),
      fallbackLocale: Locale('en', 'US'),
      smartManagement: SmartManagement.full,
      // auto-dispose controllers
      defaultTransition: Transition.fade,
    );
  }
}

