import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:load/load.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

import './login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LoadingProvider(
      //
      // 로딩 이미지 설정
      themeData: LoadingThemeData(
        loadingBackgroundColor: Colors.transparent,
      ),

      child: Scaffold(
        backgroundColor: const Color.fromRGBO(239, 240, 240, 1),
        //
        body: SafeArea(
          //
          child: Container(
            margin: const EdgeInsets.only(top: 30, left: 20, right: 20),
            width: context.width,
            height: context.height,
            //
            child: SingleChildScrollView(
              //
              child: Form(
                key: controller.loginFormKey,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                child: Column(
                  // 하단정렬
                  mainAxisAlignment: MainAxisAlignment.end,
                  //
                  children: [
                    //
                    // 로고
                    //Image.asset(
                    //  "assets/images/app-icon.png",
                    //),
                    //

                    TextLiquidFill(
                      text: '스마틸',
                      waveColor: Colors.black,
                      boxBackgroundColor: const Color.fromRGBO(239, 240, 240, 1),
                      textStyle: TextStyle(
                        fontSize: 75.0,
                        fontWeight: FontWeight.bold,
                      ),
                      boxHeight: 140.0,
                    ),

                    // 간격
                    const SizedBox(
                      height: 0,
                    ),

                    // 간격
                    const SizedBox(
                      height: 20,
                    ),

                    // 아이디
                    TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(3),
                        ),
                        labelText: "아이디",
                        prefixIcon: const Icon(Icons.people),
                      ),
                      keyboardType: TextInputType.text,
                      controller: controller.idController,
                      onSaved: (value) {
                        controller.id = value!;
                      },
                      validator: (value) {
                        return controller.validateid(value!);
                      },
                    ),

                    // 간격
                    const SizedBox(
                      height: 16,
                    ),

                    // 패스워드
                    TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(3),
                        ),
                        labelText: "패스워드",
                        prefixIcon: const Icon(Icons.lock),
                      ),
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: true,
                      controller: controller.passwordController,
                      onSaved: (value) {
                        controller.password = value!;
                      },
                      validator: (value) {
                        return controller.validatePassword(value!);
                      },
                    ),

                    // 간격
                    const SizedBox(
                      height: 16,
                    ),

                    // 로그인 버튼
                    ConstrainedBox(
                      constraints: BoxConstraints.tightFor(width: context.width),
                      child: ElevatedButton(
                        style: ButtonStyle(
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(3),
                            ),
                          ),
                          backgroundColor: MaterialStateProperty.all(const Color.fromRGBO(229, 78, 43, 1)),
                          padding: MaterialStateProperty.all(const EdgeInsets.all(14)),
                        ),
                        child: const Text(
                          "로그인",
                          style: TextStyle(fontSize: 14, color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                        onPressed: () {
                          showLoadingDialog();
                          controller.checkLogin();
                          hideLoadingDialog();
                        },
                      ),
                    ),

                    // 간격
                    const SizedBox(
                      height: 16,
                    ),

                    //
                  ],
                ),
              ),
            ),
          ),

          //
        ),
      ),
    );
  }
}
