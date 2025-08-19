import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_flynn_app/components/common_app_bar.dart';
import 'package:my_flynn_app/features/my_information/controller/my_information_controller.dart';
import 'package:my_flynn_app/features/my_information/widgets/my_information_widget.dart';
import 'package:my_flynn_app/utils/navigation/navigation_service.dart';
import 'package:my_flynn_app/utils/size_config/custom_size_controller.dart';
import 'package:my_flynn_app/utils/themes/color_scheme_extension.dart';

class MyInformation extends StatelessWidget {
  const MyInformation({super.key});

  @override
  Widget build(BuildContext context) {
    final CustomSizeController customSizeController =
        Get.find<CustomSizeController>();
    return Scaffold(
      backgroundColor: Theme.of(context).extension<AppColors>()!.white,
      appBar: PreferredSize(
        preferredSize: Size(375, 50),
        child: CommonAppBar(
          onLeadingWidgetIconPressed: () {
            NavigationService.navigationService
                .deleteController<MyInformationController>();
            NavigationService.navigationService.back();
          },
        ),
      ),
      body: Container(
        margin: EdgeInsets.only(
          left: customSizeController.getWidth(20),
          right: customSizeController.getWidth(20),
        ),
        child: MyInformationWidget(),
      ),
    );
  }
}
