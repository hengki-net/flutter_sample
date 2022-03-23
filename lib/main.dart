import 'package:flutter/material.dart';
import 'package:get/get.dart';

import './login/login_view.dart';
import './login/login_binding.dart';

void main() {
  runApp(
    GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: "SMARTEEL",
        initialRoute: '/login',
        defaultTransition: Transition.topLevel,
        getPages: [
          GetPage(
              name: '/login', page: () => LoginView(), binding: LoginBinding()),
        ]),
  );
}
