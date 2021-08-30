import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:get_cli/app/modules/class/views/class_view.dart';
import 'package:get_cli/app/modules/home/views/pages/chat.dart';
import 'package:get_cli/app/modules/home/views/pages/notifications.dart';
import 'package:get_cli/app/modules/home/views/pages/posts.dart';
import 'package:get_cli/app/modules/profile/views/profile_view.dart';

import '../controllers/home_controller.dart';

class HomeView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      builder: (controller) {
        return Scaffold(
          body: SafeArea(
            child: IndexedStack(
              index: controller.tabIndex,
              children: [
                Posts(),
                Chat(),
                ClassView(),
                Notifications(),
                ProfileView(),
              ],
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            unselectedItemColor: Colors.black,
            selectedItemColor: Colors.deepPurpleAccent,
            onTap: controller.changeTabIndex,
            currentIndex: controller.tabIndex,
            showSelectedLabels: true,
            showUnselectedLabels: true,
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.white,
            elevation: 0,
            items: [
              _bottomNavigationBarItem(
                icon: 'assets/bottonBar/posts.png',
                label: 'المنشورات'.tr,
              ),
              _bottomNavigationBarItem(
                icon:'assets/bottonBar/chat.png',
                label: 'المحادثات'.tr,
              ),
              _bottomNavigationBarItem(
                icon: 'assets/bottonBar/class.png',
                label: 'الدروس'.tr,
              ),
              _bottomNavigationBarItem(
                icon: 'assets/bottonBar/not.png',
                label: 'الأشعارات'.tr,
              ),
              _bottomNavigationBarItem(
                icon: 'assets/bottonBar/profile.png',
                label: 'حسابي'.tr,
              ),
             ],
          ),
        );
      },
    );
  }

  _bottomNavigationBarItem({ required String icon, String? label}) {
    return BottomNavigationBarItem(
      icon: Image.asset(icon),
      label: label,
    );
  }
}
