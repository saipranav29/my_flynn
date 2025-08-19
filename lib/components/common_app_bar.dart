import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:my_flynn_app/utils/navigation/navigation_service.dart';
import 'package:my_flynn_app/utils/size_config/custom_size_controller.dart';
import 'package:my_flynn_app/utils/themes/color_scheme_extension.dart';

class CommonAppBar extends StatelessWidget {
  final VoidCallback onLeadingWidgetIconPressed;

  const CommonAppBar({super.key, required this.onLeadingWidgetIconPressed});

  @override
  Widget build(BuildContext context) {
    final CustomSizeController customSizeController =
        Get.find<CustomSizeController>();
    return AppBar(
      backgroundColor: Theme.of(context).extension<AppColors>()!.white,
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset(
          'assets/icons/arrow.svg',
          width: customSizeController.getWidth(24),
          height: customSizeController.getHeight(
            24,
          ), // Optional: applies color if your SVG permits
        ),
        onPressed: onLeadingWidgetIconPressed,
      ),
    );
  }
}
