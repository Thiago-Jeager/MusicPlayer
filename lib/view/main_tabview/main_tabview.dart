import 'package:flutter/material.dart';
import 'package:flutter_music/common/color_extension.dart';

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
    return Scaffold(
      body: TabBarView(
        controller: controller,
        children: [Container(), Container(), Container()],
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(color: TColor.bg, boxShadow: const [
          BoxShadow(color: Colors.black38, blurRadius: 5, offset: Offset(0, -3))
        ]),
        child: BottomAppBar(
          color: Colors.transparent,
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
