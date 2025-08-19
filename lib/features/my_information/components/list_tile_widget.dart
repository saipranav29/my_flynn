import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:my_flynn_app/utils/size_config/custom_size_controller.dart';
import 'package:my_flynn_app/utils/themes/color_scheme_extension.dart';

class MyInformationListTileWidget extends StatelessWidget {
  final String tileTitle;
  final VoidCallback onListTilePressed;

  const MyInformationListTileWidget({
    super.key,
    required this.tileTitle,
    required this.onListTilePressed,
  });

  @override
  Widget build(BuildContext context) {
    final CustomSizeController customSizeController =
    Get.find<CustomSizeController>();
    return Container(
      height: customSizeController.getHeight(60),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Theme.of(context).extension<AppColors>()!.borderColor,
            width: 1.0,               // Border thickness
          ),
        ),
      ),
      child: ListTile(
        leading: Container(
          padding: EdgeInsets.only(
            left: customSizeController.getWidth(10),
            top: customSizeController.getHeight(20),
            bottom: customSizeController.getHeight(20),
          ),
          child: Text('$tileTitle'.tr, style: Theme
              .of(context)
              .textTheme
              .displayLarge
              ?.copyWith(
              color: Theme.of(context).extension<AppColors>()!.customGray,
              fontSize: 14
          ) ,),
        ),
        trailing: Container(
          padding: EdgeInsets.only(
            right: customSizeController.getWidth(10),
            top: customSizeController.getHeight(22),
            bottom: customSizeController.getHeight(22),
          ),
          child: SvgPicture.asset(
            'assets/icons/right_arrow.svg',
            width: customSizeController.getWidth(16),
            height: customSizeController.getHeight(
              16,
            ), // Optional: applies color if your SVG permits
          ),
        ),
      ),
    );
  }
}
