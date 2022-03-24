import 'package:get/get.dart';

import '/sample/sample_binding.dart';
import '/sample/sample_view.dart';

class Routes {
  static final routes = [
    GetPage(
        name: '/sample', page: () => SampleView(), binding: SampleBinding()),
  ];
}
