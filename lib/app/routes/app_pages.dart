import 'package:get/get.dart';

import 'package:get_cli/app/modules/class/bindings/class_binding.dart';
import 'package:get_cli/app/modules/class/views/class_view.dart';
import 'package:get_cli/app/modules/home/bindings/home_binding.dart';
import 'package:get_cli/app/modules/home/views/home_view.dart';
import 'package:get_cli/app/modules/profile/bindings/profile_binding.dart';
import 'package:get_cli/app/modules/profile/views/profile_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE,
      page: () => ProfileView(),
      binding: ProfileBinding(),
    ),

    GetPage(
      name: _Paths.CLASS,
      page: () => ClassView(),
      binding: ClassBinding(),
    ),
  ];
}
