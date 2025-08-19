

import 'package:get/get.dart';


const paddingRatio = 4.0;
const templateWidth = 375.0;
const templateHeight = 812.0;

class CustomSizeController extends GetxController{
  final double screenHeight;
  final double screenWidth;

  CustomSizeController({required this.screenHeight, required this.screenWidth});
  double getHeight(double actualHeight){
    return (actualHeight/templateHeight)*screenHeight;
  }
  double getWidth(double actualWidth){
    return (actualWidth/templateWidth)*screenWidth;
  }

}