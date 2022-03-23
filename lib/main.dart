import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'route.dart';

void main() {
  runApp(StartApp());
}

class StartApp extends StatelessWidget {
  const StartApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(debugShowCheckedModeBanner: false, initialRoute: '/sample', getPages: Routes.routes);
  }
}
