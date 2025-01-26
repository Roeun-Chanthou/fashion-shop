import 'package:get/get.dart';

class NavigatorController extends GetxController {
  void goto(String routeName) {
    Get.toNamed(routeName);
  }

  void replace(String routeName) {
    Get.offNamed(routeName);
  }

  void clearStack(String routeName) {
    Get.offAllNamed(routeName);
  }

  void goBack() {
    Get.back();
  }
}
