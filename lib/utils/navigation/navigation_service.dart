// navigation_service.dart
import 'package:get/get.dart';

class NavigationService {
  NavigationService._();
  static final NavigationService navigationService = NavigationService._();

  Future<T?> to<T>(String route, {dynamic arguments}) async {
    return Get.toNamed<T>(route, arguments: arguments);
  }

  Future<T?> off<T>(String route, {dynamic arguments}) async {
    // replaces current route; previous route disposed -> controllers closed
    return Get.offNamed<T>(route, arguments: arguments);
  }

  Future<T?> offAll<T>(String route, {dynamic arguments}) async {
    // clears entire stack; all previous controllers are disposed
    return Get.offAllNamed<T>(route, arguments: arguments);
  }

  void back<T extends Object?>([T? result]) => Get.back<T>(result: result);


  // Forcefully delete a specific controller if needed
  void deleteController<T extends GetxController>({bool force = true}) {
    if (Get.isRegistered<T>()) Get.delete<T>(force: force);
  }
}
