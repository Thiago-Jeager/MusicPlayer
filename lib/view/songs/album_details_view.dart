import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_music/common/color_extension.dart';
import 'package:flutter_music/common_widget/album_songs_row.dart';
import 'package:flutter_music/view_model/albums_view_model.dart';
import 'package:get/get.dart';

class AlbumDetailsView extends StatefulWidget {
  const AlbumDetailsView({super.key});

  @override
  State<AlbumDetailsView> createState() => _AlbumDetailsViewState();
}

class _AlbumDetailsViewState extends State<AlbumDetailsView> {
  final albumVM = Get.put(AlbumsViewModel());
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: TColor.bg,
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios,
              color: TColor.primaryText,
            )),
        title: Text(
          "Album Details",
          style: TextStyle(
            color: TColor.primaryText,
            fontSize: 17,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  ClipRRect(
                    child: ImageFiltered(
                      imageFilter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                      child: Image.asset(
                        "assets/img/alb_1.png",
                        width: double.infinity,
                        height: media.width * 0.7,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Container(
                    color: Colors.black45,
                    width: double.infinity,
                    height: media.width * 0.7,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              "assets/img/alb_1.png",
                              width: 100,
                              height: 100,
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Expanded(
                                child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Hystory",
                                  style: TextStyle(
                                    color: TColor.primaryText.withOpacity(0.8),
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  "by Michael Jackson",
                                  style: TextStyle(
                                    color: TColor.primaryText.withOpacity(0.7),
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  "1996 - 18 songs - 64 min",
                                  style: TextStyle(
                                    color: TColor.primaryText.withOpacity(0.7),
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ))
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              onTap: () {},
                              child: Container(
                                width: 80,
                                height: 35,
                                decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                        colors: TColor.primaryG,
                                        begin: Alignment.topCenter,
                                        end: Alignment.center),
                                    borderRadius: BorderRadius.circular(20)),
                                alignment: Alignment.center,
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Icon(
                                      Icons.play_arrow_outlined,
                                      color: TColor.primaryText,
                                    ),
                                    const SizedBox(
                                      width: 8,
                                    ),
                                    Text(
                                      "Play",
                                      style: TextStyle(
                                        color: TColor.primaryText,
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {},
                              child: Container(
                                width: 80,
                                height: 35,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: TColor.primaryText, width: 2),
                                    borderRadius: BorderRadius.circular(20)),
                                alignment: Alignment.center,
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Icon(
                                      Icons.share,
                                      color: TColor.primaryText,
                                    ),
                                    const SizedBox(
                                      width: 8,
                                    ),
                                    // Text(
                                    //   "Compartir",
                                    //   style: TextStyle(
                                    //     color: TColor.primaryText,
                                    //     fontSize: 9,
                                    //     fontWeight: FontWeight.bold,
                                    //   ),
                                    // ),
                                  ],
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {},
                              child: Container(
                                width: 80,
                                height: 35,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: TColor.primaryText, width: 2),
                                    borderRadius: BorderRadius.circular(20)),
                                alignment: Alignment.center,
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Icon(
                                      Icons.favorite_border,
                                      color: TColor.primaryText,
                                    ),
                                    const SizedBox(
                                      width: 8,
                                    ),
                                    // Text(
                                    //   "Compartir",
                                    //   style: TextStyle(
                                    //     color: TColor.primaryText,
                                    //     fontSize: 9,
                                    //     fontWeight: FontWeight.bold,
                                    //   ),
                                    // ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  itemCount: albumVM.playedArr.length,
                  itemBuilder: (context, index) {
                    var sObj = albumVM.playedArr[index];
                    return AlbumSongsRow(
                      sObj: sObj,
                      onPressedPlay: () {},
                      onPressed: () {},
                      isPlay: index == 0,
                    );
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
