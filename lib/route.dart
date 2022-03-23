import 'package:get/get.dart';

import './login/login_binding.dart';
import './login/login_view.dart';

import './menu/menu_binding.dart';
import './menu/menu_view.dart';

import './sample/sample_binding.dart';
import './sample/sample_view.dart';

class Routes {
  static final routes = [
    GetPage(
        name: '/login',
        page: () => LoginView(),
        binding: LoginBinding()),
    GetPage(
        name: '/menu',
        page: () => MenuView(),
        binding: MenuBinding()),
    GetPage(
        name: '/sample',
        page: () => SampleView(),
        binding: SampleBinding()),
  ];
}
