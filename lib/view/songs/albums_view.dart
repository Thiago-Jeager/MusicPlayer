import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_music/common_widget/albums_cell.dart';
import 'package:flutter_music/view_model/albums_view_model.dart';
import 'package:get/get.dart';

class AlbumsView extends StatefulWidget {
  const AlbumsView({super.key});

  @override
  State<AlbumsView> createState() => _AlbumsViewState();
}

class _AlbumsViewState extends State<AlbumsView> {
  final albumVM = Get.put(AlbumsViewModel());
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.sizeOf(context);
    var cellWidth = ((media.width - 40 - 20) * 0.5);
    return Scaffold(
      body: Obx(() => GridView.builder(
            physics: const BouncingScrollPhysics(),
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: cellWidth / (cellWidth + 60),
                crossAxisSpacing: 20,
                mainAxisSpacing: 20),
            itemCount: albumVM.allList.length,
            itemBuilder: (context, index) {
              var aObj = albumVM.allList[index];
              return AlbumsCell(
                  onPressed: () {},
                  onPressedMenu: (selectIndex) {
                    if (kDebugMode) {
                      print(selectIndex);
                    }
                  },
                  aObj: aObj);
            },
          )),
    );
  }
}
