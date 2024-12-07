import 'package:flutter/material.dart';
import 'package:flutter_music/common_widget/all_song_row.dart';
import 'package:flutter_music/view_model/all_songs_view_model.dart';
import 'package:get/get.dart';

class AllSongsView extends StatefulWidget {
  const AllSongsView({super.key});
  @override
  State<AllSongsView> createState() => _AllSongsViewState();
}

class _AllSongsViewState extends State<AllSongsView> {
  final allVM = Get.put(AllSongsViewModel());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => ListView.builder(
          itemCount: allVM.allList.length,
          itemBuilder: (context, index) {
            var sObj = allVM.allList[index];
            return AllSongRow(
              sObj: sObj,
              onPressed: () {},
              onPressedPlay: () {},
            );
          },
        ),
      ),
    );
  }
}
