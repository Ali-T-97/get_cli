import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:get_cli/app/modules/class/views/widgets_view.dart';

class ClassesView extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
         post(),
         post(),
         post(),
      ],
    ));
  }

  Widget post() {
    return Padding(
      padding: const EdgeInsets.all(19.0),
      child: Container(
        height: Get.mediaQuery.size.height * 0.5,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(15)),
        child: Column(
          children: [
            //row of information
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.keyboard_arrow_up,
                        color: Colors.grey,
                      )),
                  SizedBox(
                    width: Get.mediaQuery.size.width * 0.3,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'رقم الدرس-12'.tr,
                        style: TextStyle(fontSize: 18),
                        textAlign: TextAlign.right,
                      ),
                      Text(
                        'اسم المرسل'.tr,
                        style: TextStyle(color: Colors.grey, fontSize: 11),
                      )
                    ],
                  ),
                  SizedBox(
                    width: Get.mediaQuery.size.width * 0.06,
                  ),
                  Container(
                    height: 48,
                    width: 48,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [Colors.green, Colors.greenAccent]),
                      shape: BoxShape.circle,
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(0.3),
                      child: Container(
                        height: 45,
                        width: 45,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image:
                                    AssetImage('assets/bottonBar/profile.png'),
                                fit: BoxFit.cover)),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Divider(
              color: Colors.grey,
            ),
            //class information
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  alignment: Alignment.topRight,
                  child: Text(
                    'هنا يكتب موضوع الدرس بنفس اللون'.tr,
                    style: TextStyle(fontSize: 15, color: Colors.blueGrey),
                    textAlign: TextAlign.right,
                  )),
            ),
            //image
            Container(
              width: double.infinity,
              height: Get.mediaQuery.size.height / 4,
              child: Image(
                image: AssetImage('assets/image_post.jpg'),
                fit: BoxFit.fitWidth,
              ),
            ),
            SizedBox(
              height: Get.mediaQuery.size.height * 0.01,
            ),
            //row of social media
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: Icon(CupertinoIcons.ellipsis),
                      color: Colors.grey,
                      iconSize: 19),
                  SizedBox(
                    width: Get.mediaQuery.size.width / 9,
                  ),
                  Text(
                    '+ 148',
                    style: TextStyle(color: Colors.grey, fontSize: 13),
                  ),
                  imageStack(),
                  Text(
                    '+ 143',
                    style: TextStyle(color: Colors.grey, fontSize: 13),
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(CupertinoIcons.chat_bubble_text),
                      color: Colors.grey,
                      iconSize: 19),
                  Text(
                    '942',
                    style: TextStyle(color: Colors.grey, fontSize: 13),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(CupertinoIcons.heart),
                    color: Colors.grey,
                    iconSize: 19,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget imageStack({
    TextDirection direction = TextDirection.ltr,
  }) {
    final double size = 30;
    final double xShift = 15;
    final urlImage = [
      'assets/image_post.jpg',
      'assets/image2.jpg',
      'assets/bottonBar/profile.png',
    ];
    final items = urlImage.map((urlImage) => buildImage(urlImage)).toList();

    return StackedWidgets(
      direction: direction,
      items: items,
      size: size,
      xShift: xShift,
    );
  }

  Widget buildImage(String urlImage) {
    final double borderSize = 5;

    return ClipOval(
      child: Container(
        padding: EdgeInsets.all(borderSize),
        color: Colors.white,
        child: ClipOval(
          child: Image.asset(
            urlImage,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
