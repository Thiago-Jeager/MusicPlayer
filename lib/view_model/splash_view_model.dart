import 'package:flutter/material.dart';
import 'package:flutter_music/view/main_tabview/main_tabview.dart';
import 'package:get/get.dart';

class SplashViewModel extends GetxController {
  var scafofldKey = GlobalKey<ScaffoldState>();

  void loadview() async {
    await Future.delayed(const Duration(seconds: 3));
    Get.to(() => const MainTabview());
  }

  void openDrawer() {
    scafofldKey.currentState?.openDrawer();
  }

  void closeDrawer() {
    scafofldKey.currentState?.closeDrawer();
  }
}
