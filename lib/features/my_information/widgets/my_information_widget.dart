import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_flynn_app/components/common_page_title_widget.dart';
import 'package:my_flynn_app/features/my_information/components/list_tile_widget.dart';
import 'package:my_flynn_app/features/my_information/controller/my_information_controller.dart';

class MyInformationWidget extends StatefulWidget {
  const MyInformationWidget({super.key});

  @override
  State<MyInformationWidget> createState() => _MyInformationWidgetState();
}

class _MyInformationWidgetState extends State<MyInformationWidget> {
  late final MyInformationController myInformationController;

  @override
  void initState() {
    myInformationController = Get.find<MyInformationController>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        /// page title widget
        CommonPageTitleWidget(
          pageTitle: 'myInformation',
        ),
        /// buttons list view builder
        MyInformationListTileWidget(
          onListTilePressed: (){

          },
          tileTitle: 'basicInformation',
        ),
        MyInformationListTileWidget(
          onListTilePressed: (){

          },
          tileTitle: 'setPassword',
        ),
        MyInformationListTileWidget(
          onListTilePressed: (){

          },
          tileTitle: 'interestCategories',
        ),
      ],
    );
  }
}
