import 'package:get/get.dart';
import 'package:get_cli/app/modules/class/controllers/class_controller.dart';

import '../controllers/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(
      () => HomeController(),
    );
    Get.put(ClassController());
  }
}
