import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/class_controller.dart';
import 'classes_view.dart';

class ClassView extends GetView<ClassController> {
  final ClassController _controller = Get.find<ClassController>();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        initialIndex: 3,
        length: 5,
        child: Scaffold(
            appBar: AppBar(
              leading: Builder(
                builder: (BuildContext context) {
                  return IconButton(
                    icon: Image.asset('assets/calendar.png'),
                    onPressed: () {},
                    tooltip:
                        MaterialLocalizations.of(context).openAppDrawerTooltip,
                  );
                },
              ),
              actions: [
                IconButton(
                  icon: Icon(CupertinoIcons.ellipsis),
                  color: Colors.grey,
                  tooltip: 'Show Snackbar',
                  onPressed: () {
                    Get.defaultDialog(
                      title: "Alert!",
                      content: Column(
                        children: [
                          // ignore: deprecated_member_use
                          RaisedButton(
                            onPressed: () {
                              _controller.changeLanguage = "ar";
                            },
                            child: Text('العربيه',style: TextStyle(color: Colors.white),),
                            color: Colors.blue,
                          ),
                          // ignore: deprecated_member_use
                          RaisedButton(
                            onPressed: () {
                              _controller.changeLanguage = "en";
                            },
                            child: Text('Engish',style: TextStyle(color: Colors.white),),
                            color: Colors.blue,
                          )
                        ],
                      ),
                    );
                  },
                ),
              ],
              bottom: TabBar(
                tabs: [
                  Tab(
                    child: Text(
                      'الأختبارات'.tr,
                      style: TextStyle(color: Colors.black, fontSize: 11),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'الواجبات'.tr,
                      style: TextStyle(color: Colors.black, fontSize: 11),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'البث المباشر'.tr,
                      style: TextStyle(color: Colors.black, fontSize: 11),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'الدروس'.tr,
                      style: TextStyle(color: Colors.black, fontSize: 11),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'الكل'.tr,
                      style: TextStyle(color: Colors.black, fontSize: 11),
                    ),
                  ),
                ],
              ),
              backgroundColor: Colors.white,
              title: Text(
                'اللغه العربيه'.tr,
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
              centerTitle: true,
            ),
            body: TabBarView(children: [
              Center(
                child: Text('الاختبارات'.tr),
              ),
              Center(
                child: Text('الواجبات'.tr),
              ),
              Center(
                child: Text('البث المباشر'.tr),
              ),
              ClassesView(),
              Center(
                child: Text('الكل'.tr),
              ),
            ])));
  }
}
