import 'package:flutter/material.dart';
import 'package:flutter_music/common/color_extension.dart';
import 'package:flutter_music/common_widget/icon_text.dart';
import 'package:flutter_music/view_model/splash_view_model.dart';
import 'package:get/get.dart';

class SettingsView extends StatefulWidget {
  const SettingsView({super.key});

  @override
  State<SettingsView> createState() => _SettingsViewState();
}

class _SettingsViewState extends State<SettingsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: TColor.bg,
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              Get.find<SplashViewModel>().openDrawer();
            },
            icon: Image.asset(
              'assets/img/menu.png',
              width: 25,
              height: 25,
              fit: BoxFit.contain,
            )),
        title: Text(
          "Cofiguracion",
          style: TextStyle(
            color: TColor.primaryText,
            fontSize: 17,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView(
        // padding: EdgeInsets.symmetric(vertical: media.height * .2),

        children: [
          IconText(
              title: "Tema",
              icon: Icon(
                Icons.window,
                color: TColor.focus,
              ),
              onTap: () {}),
          IconText(
              title: "Tema",
              icon: Icon(
                Icons.window,
                color: TColor.focus,
              ),
              onTap: () {}),
          IconText(
              title: "Tema",
              icon: Icon(
                Icons.window,
                color: TColor.focus,
              ),
              onTap: () {}),
          IconText(
              title: "Tema",
              icon: Icon(
                Icons.window,
                color: TColor.focus,
              ),
              onTap: () {}),
        ],
      ),
    );
  }
}
