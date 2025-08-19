import 'package:flutter/material.dart';
import 'package:my_flynn_app/utils/themes/color_scheme_extension.dart';

class SplashTextWidget extends StatelessWidget {
  const SplashTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("MY FLYNN",
          style: Theme.of(context)
              .textTheme
              .displayLarge
              ?.copyWith(
              color: Theme.of(context).extension<AppColors>()!
                  .white)
      ),
    );
  }
}
