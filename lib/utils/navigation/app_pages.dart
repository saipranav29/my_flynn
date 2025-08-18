import 'package:get/get.dart';
import 'package:my_flynn_app/features/splash_screen/screen/splash_screen.dart';
import 'package:my_flynn_app/features/user_profile/screen/user_profile_screen.dart';

import 'app_route_bindings.dart';
import 'app_routes.dart';

class AppPages {
  static final routes = [
    GetPage(
      name: Routes.SPLASH,
      page: () => SplashScreen(),
      binding: SplashBinding(),
      transition: Transition.fade,
    ),
    GetPage(
      name: Routes.USERPROFILE,
      page: () => UserProfileScreen(),
      binding: UserProfileBinding(),
      transition: Transition.fade,
    ),
  ];
}
