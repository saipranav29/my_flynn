import 'package:flutter/material.dart';
extension ColorExt on ColorScheme {
  Color get primary => Color(0xff440D7E);

  Color get secondary => Color(0xffF5F5F5);

  Color get tertiary => Color(0xff303233);

  Color get error => Color(0xffD70000); //old error
  Color get success => Color(0xff00BA29); //old onError

  Color get black => Colors.black; //old onSurface

  Color get shadow => Color(0X000000);
  Color get outline => Color(0xFFCCD2E3);

  Color get onBackground => Color(0xFF233657);
  Color get white => Color(0xFFFFFFFF);
//old surface

  Color get transparent => Colors.transparent;
}