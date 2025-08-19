import 'package:flutter/material.dart';

@immutable
class AppColors extends ThemeExtension<AppColors> {
  final Color mainPurple;
  final Color customGray;
  final Color white;
  final Color borderColor;

  const AppColors({
    required this.mainPurple,
    required this.customGray,
    required this.white,
    required this.borderColor,
  });

  @override
  AppColors copyWith({Color? mainPurple, Color? customGray}) {
    return AppColors(
      mainPurple: mainPurple ?? this.mainPurple,
      customGray: customGray ?? this.customGray,
      white: this.white,
      borderColor: this.borderColor,
    );
  }

  @override
  AppColors lerp(ThemeExtension<AppColors>? other, double t) {
    if (other is! AppColors) return this;
    return AppColors(
      mainPurple: Color.lerp(mainPurple, other.mainPurple, t)!,
      customGray: Color.lerp(customGray, other.customGray, t)!,
      white: Color.lerp(white, other.white, t)!,
      borderColor: Color.lerp(borderColor, other.borderColor, t)!,
    );
  }
}
