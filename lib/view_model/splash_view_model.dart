import 'package:flutter_music/view/main_tabview/main_tabview.dart';
import 'package:get/get.dart';

class SplashViewModel extends GetxController {
  void loadview() async {
    await Future.delayed(const Duration(seconds: 3));
    Get.to(() => const MainTabview());
  }
}
