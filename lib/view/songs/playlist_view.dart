import 'package:flutter/material.dart';
import 'package:flutter_music/common/color_extension.dart';
import 'package:flutter_music/common_widget/playlist_cell.dart';
import 'package:flutter_music/common_widget/playlist_songs_cell.dart';
import 'package:flutter_music/common_widget/view_all_section.dart';
import 'package:flutter_music/view_model/playlist_vire_model.dart';
import 'package:get/get.dart';

class PlaylistView extends StatefulWidget {
  const PlaylistView({super.key});

  @override
  State<PlaylistView> createState() => _PlaylistViewState();
}

class _PlaylistViewState extends State<PlaylistView> {
  final plVM = Get.put(PlaylistsViewModel());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: TColor.bg03,
          onPressed: () {},
          child: Icon(
            Icons.add,
            color: TColor.focus,
            size: 50,
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Obx(() => GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
                  itemCount: plVM.playlistArr.length,
                  itemBuilder: (context, index) {
                    var pObj = plVM.playlistArr[index];
                    return PlaylistSongsCell(
                        onPressed: () {}, pObj: pObj, onPressedPlay: () {});
                  })),
              ViewAllSection(title: "Mis Listas", onPressed: () {}),
              SizedBox(
                height: 150,
                child: Obx(
                  () => ListView.builder(
                    scrollDirection: Axis.horizontal,
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    itemCount: plVM.myPlaylistArr.length,
                    itemBuilder: (context, index) {
                      var pObj = plVM.myPlaylistArr[index];
                      return PlaylistCell(
                        pObj: pObj,
                        onPressed: () {},
                      );
                    },
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
