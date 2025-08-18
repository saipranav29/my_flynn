// bindings.dart
import 'package:get/get.dart';
import 'package:my_flynn_app/features/splash_screen/controller/splash_screen_controller.dart';
import 'package:my_flynn_app/features/user_profile/controller/user_profile_controller.dart';

class SplashBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SplashScreenController>(
      () => SplashScreenController(),
      fenix: false,
    );
  }
}

class UserProfileBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<UserProfileController>(
          () => UserProfileController(),
      fenix: false,
    );
  }
}
