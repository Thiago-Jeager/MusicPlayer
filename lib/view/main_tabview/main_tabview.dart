import 'package:flutter/material.dart';
import 'package:flutter_music/common/color_extension.dart';
import 'package:flutter_music/view/home/home_view.dart';
import 'package:flutter_music/view_model/splash_view_model.dart';
import 'package:get/get.dart';

class MainTabview extends StatefulWidget {
  const MainTabview({super.key});

  @override
  State<MainTabview> createState() => _MainTabviewState();
}

class _MainTabviewState extends State<MainTabview>
    with SingleTickerProviderStateMixin {
  TabController? controller;
  int selectTab = 0;

  @override
  void initState() {
    super.initState();
    controller = TabController(length: 3, vsync: this);
    controller?.addListener(() {
      selectTab = controller?.index ?? 0;
      setState(() {});
    });
  }

  @override
  void dispose() {
    super.dispose();
    controller?.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.sizeOf(context);
    var splashVM = Get.find<SplashViewModel>();
    return Scaffold(
      key: splashVM.scafofldKey,
      drawer: Drawer(
        backgroundColor: TColor.bg,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            SizedBox(
              height: 260,
              child: DrawerHeader(
                  decoration: BoxDecoration(color: TColor.bg03),
                  child: Column(
                    children: [
                      Image.asset(
                        "assets/img/app_logo.png",
                        width: media.width * 0.2,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            children: [
                              Text("328",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(color: TColor.primaryText28))
                            ],
                          ),
                          Column(
                            children: [
                              Text("328",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(color: TColor.primaryText28))
                            ],
                          ),
                          Column(
                            children: [
                              Text("328",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(color: TColor.primaryText28))
                            ],
                          )
                        ],
                      )
                    ],
                  )),
            ),
            ListTile(
              // leading: Image.asset("assets/img/m_theme.png"),
              leading: Icon(
                Icons.color_lens_outlined,
                color: TColor.focus,
              ),
              title: Text(
                "Tema",
                style: TextStyle(
                    color: TColor.primaryText80, fontWeight: FontWeight.bold),
              ),
              onTap: () {
                splashVM.closeDrawer();
              },
            ),
            Divider(
              color: TColor.primaryText80,
              indent: 70,
            ),
            ListTile(
              // leading: Image.asset("assets/img/m_theme.png"),
              leading: Icon(
                Icons.timer_outlined,
                color: TColor.focus,
              ),
              title: Text(
                "Alarma",
                style: TextStyle(
                    color: TColor.primaryText80, fontWeight: FontWeight.bold),
              ),
            ),
            Divider(
              color: TColor.primaryText80,
              indent: 70,
            ),
            ListTile(
              // leading: Image.asset("assets/img/m_theme.png"),
              leading: Icon(
                Icons.screen_search_desktop_outlined,
                color: TColor.focus,
              ),
              title: Text(
                "Buscar Canciones",
                style: TextStyle(
                    color: TColor.primaryText80, fontWeight: FontWeight.bold),
              ),
            ),
            Divider(
              color: TColor.primaryText80,
              indent: 70,
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: controller,
        children: [const HomeView(), Container(), Container()],
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(color: TColor.bg, boxShadow: const [
          BoxShadow(color: Colors.black38, blurRadius: 5, offset: Offset(0, -3))
        ]),
        child: BottomAppBar(
          color: TColor.bg,
          child: TabBar(
              controller: controller,
              indicatorColor: Colors.transparent,
              indicatorWeight: 1,
              labelColor: TColor.primary,
              labelStyle: const TextStyle(fontSize: 10),
              unselectedLabelColor: TColor.primaryText28,
              unselectedLabelStyle: const TextStyle(fontSize: 10),
              tabs: [
                Tab(
                  text: "Inicio",
                  icon: Image.asset(
                    selectTab == 0
                        ? "assets/img/home_tab.png"
                        : "assets/img/home_tab_un.png",
                    width: 25,
                  ),
                ),
                Tab(
                  text: "Canciones",
                  icon: Image.asset(
                    selectTab == 1
                        ? "assets/img/songs_tab.png"
                        : "assets/img/songs_tab_un.png",
                    width: 25,
                  ),
                ),
                Tab(
                  text: "Configuracion",
                  icon: Image.asset(
                    selectTab == 2
                        ? "assets/img/setting_tab.png"
                        : "assets/img/setting_tab_un.png",
                    width: 25,
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}
