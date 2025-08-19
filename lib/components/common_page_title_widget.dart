import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_flynn_app/utils/size_config/custom_size_controller.dart';
import 'package:my_flynn_app/utils/themes/color_scheme_extension.dart';

class CommonPageTitleWidget extends StatelessWidget {
  final String pageTitle;

  const CommonPageTitleWidget({super.key, required this.pageTitle});

  @override
  Widget build(BuildContext context) {
    final CustomSizeController customSizeController =
        Get.find<CustomSizeController>();
    return Container(
      height: customSizeController.getHeight(39),
      child: Text(
        '$pageTitle'.tr,
        style: Theme.of(context).textTheme.displayLarge?.copyWith(
          color: Theme.of(context).extension<AppColors>()!.customGray,
          fontSize: 28
        ),
      ),
    );
  }
}
