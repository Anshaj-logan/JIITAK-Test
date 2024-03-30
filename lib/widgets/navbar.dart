import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';
import 'package:jittak_test/controller/controller.dart';
import 'package:jittak_test/screens/chat.dart';
import 'package:jittak_test/screens/job.dart';
import 'package:jittak_test/screens/myPage.dart';
import 'package:jittak_test/screens/search.dart';
import 'package:jittak_test/widgets/routes.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  final controller = Get.put(NavBarController());
  @override
  Widget build(BuildContext context) {
    return GetBuilder<NavBarController>(builder: (context) {
      return Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: Color(0xffEDA827),
          child: Image.asset(
                                  "assets/images/scan-line.png",  
                                  fit: BoxFit.cover,
                                ),
          onPressed: () {
            Get.toNamed(AppPage.stamp);
          },
        ),
        body: IndexedStack(
          index: controller.tabIndex,
          children:  [SearchScreen(), JobScreen(), ChatScreen(), MyPage()],
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: Stack(
          children: [
            BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              selectedItemColor: Colors.amber,
              unselectedItemColor: Colors.black,
              currentIndex: controller.tabIndex,
              onTap: controller.changeTabIndex,
              // iconSize: 28.0, // Adjust icon size
              // selectedFontSize: 8.0,  
              
              items: [
                _bottombarItem(IconlyBold.search, "さがす"),
                _bottombarItem(IconlyBold.work, "お仕事"),
                _bottombarItem(IconlyBold.chat, "チャット"),
                _bottombarItem(IconlyBold.profile, "マイページ")
              ],
            ),
             Positioned(
              bottom: 8.0, // Adjust this value to change the position of the text
              left: 0,
              right: 0,
              child: Text(
                "打刻する",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 8.0, 
                  fontWeight: FontWeight.bold, 
                ),
              ),
            ),
          ],
        ),
      );
    });
  }
}

_bottombarItem(IconData icon, String label) {
  return BottomNavigationBarItem(icon: Icon(icon), label: label);
}
