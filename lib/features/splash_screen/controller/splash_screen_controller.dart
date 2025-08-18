import 'package:get/get.dart';
import 'package:my_flynn_app/utils/navigation/app_routes.dart';
import 'package:my_flynn_app/utils/navigation/navigation_service.dart';

class SplashScreenController extends GetxController {
  /// wait for five seconds and move to next screen
  Future<void> waitFiveSeconds() async {
    await Future.delayed(Duration(seconds: 5)).then(
      (value) => NavigationService.navigationService.off(Routes.USERPROFILE),
    );
  }

  @override
  void onClose() {
    super.onClose();
  }
}
