import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_flynn_app/features/splash_screen/controller/splash_screen_controller.dart';
import 'package:my_flynn_app/features/splash_screen/widget/splash_text_widget.dart';
import 'package:my_flynn_app/utils/size_config/custom_size_controller.dart';
import 'package:my_flynn_app/utils/themes/color_scheme_extension.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late final SplashScreenController splashScreenController;

  @override
  void initState() {
    splashScreenController = Get.find<SplashScreenController>();
    splashScreenController.waitFiveSeconds();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    double screenHeight = screenSize.height;
    double screenWidth = screenSize.width;
    Get.put(
      CustomSizeController(
        screenHeight: screenHeight,
        screenWidth: screenWidth,
      ),
      permanent: true,
    );
    return Scaffold(
      backgroundColor:Theme.of(context).extension<AppColors>()!.mainPurple,
      body: SizedBox(
        height: screenHeight,
        width: screenWidth,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            /// text widget
            SplashTextWidget(),
          ],
        ),
      ),
    );
  }
}
