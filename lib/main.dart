import 'package:flutter/material.dart';
import 'package:flutter_music/common/color_extension.dart';
import 'package:flutter_music/view/splash_screen.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Music Player',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Circular Std",
        scaffoldBackgroundColor: TColor.bg,
        textTheme: Theme.of(context).textTheme.apply(
            bodyColor: TColor.primaryText, displayColor: TColor.primaryText),
        colorScheme: ColorScheme.fromSeed(seedColor: TColor.primary),
        useMaterial3: true,
      ),
      home: const SplashView(),
    );
  }
}
