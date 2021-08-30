import 'dart:ui';

import 'package:get/get.dart';
import 'package:get_cli/generated/locales.g.dart';

class ClassController extends GetxController {

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;

  var selectedLanguage = Get.locale?.languageCode.obs;

  set changeLanguage(String lang) {
    Locale locale = new Locale(lang);
    Get.updateLocale(locale);
    selectedLanguage?.value = lang;
  }
}
