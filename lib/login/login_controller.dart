import 'package:flutter/material.dart';
import 'package:get/get.dart';

import './login_provider.dart';
import '../menu/menu_view.dart';

class LoginController extends GetxController {
  final GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();

  late TextEditingController idController, passwordController;
  var id = '';
  var password = '';

  @override
  void onInit() {
    super.onInit();
    idController = TextEditingController();
    passwordController = TextEditingController();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    idController.dispose();
    passwordController.dispose();
  }

  // 아이디 유효성 검사
  String? validateid(String value) {
    if (value.isEmpty) {
      return "아이디를 입력 하세요.";
    }

    return null;
  }

  // 패스워드 유효성 검사
  String? validatePassword(String value) {
    if (value.isEmpty) {
      return "패스워드를 입력 하세요.";
    }

    return null;
  }

  //로그인 버튼 클릭
  void checkLogin() {
    loginFormKey.currentState!.save();

    // 데이터 호출
    var loginProvider = LoginProvider();

    loginProvider.checkLogin(id, password).then((result) {
      List<dynamic> data = result.body;

      String ckid = data[0]['CK_ID'];
      String ckpass = data[0]['CK_PASS'];

      // 로그인 체크
      if (ckid == 'false') {
        //print('01_아이디 확인');
        // 벨리데이션 표시하고 싶은데... 잘안됨
      } else if (ckid == 'true' && ckpass == 'false') {
        //print('02_패스워드 확인');
        // 벨리데이션 표시하고 싶은데... 잘안됨
      } else if (ckid == 'true' && ckpass == 'true') {
        //print('03_로그인 성공');

        // 페이지 이동
        Get.offAll(() => MenuView());
      }
    }, onError: (err) {});
  }
}
