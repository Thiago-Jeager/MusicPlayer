import 'package:flutter/material.dart';
import 'package:flutter_music/common/color_extension.dart';
import 'package:flutter_music/view/songs/all_songs_view.dart';
import 'package:flutter_music/view/songs/playlist_view.dart';
import 'package:flutter_music/view_model/splash_view_model.dart';
import 'package:get/get.dart';

class SongsView extends StatefulWidget {
  const SongsView({super.key});

  @override
  State<SongsView> createState() => _SongsViewState();
}

class _SongsViewState extends State<SongsView>
    with SingleTickerProviderStateMixin {
  TabController? controller;
  int selectTab = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = TabController(length: 5, vsync: this);
    controller?.addListener(() {
      selectTab = controller?.index ?? 0;
      setState(() {});
    });
  }

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
          "Songs",
          style: TextStyle(
            color: TColor.primaryText,
            fontSize: 17,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search_rounded,
                color: TColor.primaryText35,
              )),
        ],
      ),
      body: Column(
        children: [
          TabBar(
            physics: const BouncingScrollPhysics(),
            isScrollable: true,
            indicatorColor: TColor.focus,
            controller: controller,
            labelStyle: TextStyle(
                color: TColor.primaryText,
                fontSize: 15,
                fontWeight: FontWeight.bold),
            unselectedLabelStyle: TextStyle(
                color: TColor.primaryText35,
                fontSize: 15,
                fontWeight: FontWeight.bold),
            tabs: const [
              Tab(
                text: "Todas las canciones",
              ),
              Tab(
                text: "Listas",
              ),
              Tab(
                text: "Albums",
              ),
              Tab(
                text: "Artistas",
              ),
              Tab(
                text: "Genero",
              ),
            ],
          ),
          Expanded(
              child: TabBarView(controller: controller, children: const [
            AllSongsView(),
            PlaylistView(),
            Center(
              child: Text("art"),
            ),
            Center(
              child: Text("genre"),
            ),
            Center(
              child: Text("genre"),
            ),
          ]))
        ],
      ),
    );
  }
}
