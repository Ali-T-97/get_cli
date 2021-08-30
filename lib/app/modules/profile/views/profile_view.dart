import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
        appBar: null,
        body: Column(
          children: [
            Container(
                height: Get.mediaQuery.size.height / 7,
                width: double.infinity,
                decoration: BoxDecoration(color: Colors.white, boxShadow: [
                  BoxShadow(
                      color: Colors.grey.shade300,
                      blurRadius: 9,
                      offset: Offset(0, 7))
                ]),
                child: Column(
                  children: [
                    Padding(
                        padding:
                            const EdgeInsets.only(left: 0, top: 11, right: 0, bottom: 4),
                        child: Row(
                            // mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Column(
                                children: [
                                  IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        CupertinoIcons.ellipsis,
                                        color: Colors.grey,
                                      )),
                                ],
                              ),
                              SizedBox(
                                width: Get.mediaQuery.size.width * 0.3,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'نجوى كرم',
                                    style: TextStyle(fontSize: 20),
                                    textAlign: TextAlign.right,
                                  ),
                                  Text(
                                    'اسم المستخدم'.tr,
                                    style: TextStyle(color: Colors.grey, fontSize: 12),
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        'الصف-الشعبه'.tr,
                                        style: TextStyle(
                                            color: Colors.black45, fontSize: 11),
                                      ),
                                      Text(
                                        '/اسم المدرسه'.tr,
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 11),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              SizedBox(
                                width: Get.mediaQuery.size.width * 0.01,
                              ),
                              Container(
                                width: 75,
                                height: 75,
                                child: Stack(
                                  children: <Widget>[
                                    Container(
                                      width: 75,
                                      height: 75,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          image: DecorationImage(
                                              image: AssetImage('assets/image2.jpg'),
                                              fit: BoxFit.cover)),
                                    ),
                                    Positioned(
                                        bottom: 0,
                                        right: 0,
                                        child: Container(
                                          width: 19,
                                          height: 19,
                                          decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: Colors.white),
                                          child: Icon(
                                            Icons.add_circle,
                                            color: Colors.blue,
                                            size: 22,
                                          ),
                                        ))
                                  ],
                                ),
                              ),
                            ]
                        )
                    ),
                    SizedBox(height: Get.mediaQuery.size.height*0.007,),
                    Divider()
                  ],
                )
            ),

            Expanded(
                child: Container(
                  color: Colors.white,
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(padding: EdgeInsets.only(right: 6),
                            child:Text('الخيارات'.tr,style: TextStyle(color: Colors.blue),),),

                          ],
                        ),
                        SizedBox(height: 5,),
                        Expanded(
                          child: ListView(
                            children: [
                              option('الاحداث'.tr,'assets/options/action.png'),
                              option('الجدول الزمني'.tr,'assets/options/table.png'),
                              option('الدرجات'.tr,'assets/options/mark.png'),
                              option('الاختبارات'.tr,'assets/options/exam.png'),
                              option('الاحصائات'.tr,'assets/options/flash.png'),
                              option('الواجبات المنزليه'.tr,'assets/options/homework.png'),
                              option('الحضور'.tr,'assets/options/here.png'),
                              option('بنك الاسئله'.tr,'assets/options/q.png'),
                              option('بنك الدروس'.tr,'assets/options/bank.png'),
                              option('المكتبه'.tr,'assets/options/book.png'),
                              option('الاقساط'.tr,'assets/options/money.png'),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),

            )
          ],
        )
    );
  }
  Widget option( String name,String image ){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(name),
              SizedBox(width: 15,),
              Container(
                child: Image(image:AssetImage(image),),
              )
            ],
          ),
          Divider()
        ],
      ),
    );
  }
}
