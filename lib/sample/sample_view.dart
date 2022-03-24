import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../common/widget/side_bar.dart';
import './sample_controller.dart';

class SampleView extends GetView<SampleController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //
        // 상단바
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          foregroundColor: Colors.black54,
          elevation: 0,
          title: Text('Sample'),
        ),

        // 사이드바
        drawer: SideBar(),
        backgroundColor: Colors.white,

        // 내용
        body: controller.obx((data) => Center(
              child: Center(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                    Text(data[0]),
                  ])),
            )));
  }
}

//https://www.androidcoding.in/2021/08/03/getx-api-call/