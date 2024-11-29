import 'package:flutter/material.dart';
import 'package:flutter_music/common/color_extension.dart';
import 'package:flutter_music/common_widget/recomended_cell.dart';
import 'package:flutter_music/common_widget/songs_cell.dart';
import 'package:flutter_music/common_widget/songs_row.dart';
import 'package:flutter_music/common_widget/title_section.dart';
import 'package:flutter_music/common_widget/view_all_section.dart';
import 'package:get/get.dart';
import 'package:flutter_music/view_model/home_view_model.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final homeVM = Get.put(HomeViewModel());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: TColor.bg,
        elevation: 0,
        leading: IconButton(
            onPressed: () {},
            icon: Image.asset(
              'assets/img/menu.png',
              width: 25,
              height: 25,
              fit: BoxFit.contain,
            )),
        title: Row(
          children: [
            Expanded(
              child: Container(
                height: 38,
                // width: double.maxFinite,
                decoration: BoxDecoration(
                    color: const Color(0xff292E4B),
                    borderRadius: BorderRadius.circular(19)),
                child: TextField(
                  controller: homeVM.txtSearch.value,
                  decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(horizontal: 0),
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      errorBorder: InputBorder.none,
                      prefixIcon: Icon(
                        Icons.search,
                        color: TColor.primaryText28,
                      ),
                      hintText: "Buscar cancion",
                      hintStyle:
                          TextStyle(color: TColor.primaryText28, fontSize: 13)),
                ),
              ),
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TitleSection(title: "Recomendada"),
            SizedBox(
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: homeVM.hostRecommendedArr.length,
                itemBuilder: (context, index) {
                  var mObj = homeVM.hostRecommendedArr[index];
                  return RecomendedCell(mObj: mObj);
                },
              ),
            ),
            Divider(
              color: Colors.white,
              indent: 20,
              endIndent: 20,
            ),
            ViewAllSection(title: "Listas", onPressed: () {}),
            SizedBox(
              height: 175,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: homeVM.playListArr.length,
                itemBuilder: (context, index) {
                  var mObj = homeVM.playListArr[index];
                  return SongsCell(mObj: mObj);
                },
              ),
            ),
            Divider(
              color: Colors.white,
              indent: 20,
              endIndent: 20,
            ),
            ViewAllSection(title: "Recientes", onPressed: () {}),
            ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                padding: EdgeInsets.symmetric(horizontal: 10),
                itemCount: homeVM.recentlyPlayedArr.length,
                itemBuilder: (context, index) {
                  var sObj = homeVM.recentlyPlayedArr[index];
                  return SongsRow(
                      sObj: sObj, onPressedPlay: () {}, onPressed: () {});
                }),
          ],
        ),
      ),
    );
  }
}
