import 'package:flutter/material.dart';
import 'package:flutter_sample/sample/sample_provider.dart';
import 'package:get/get.dart';

import 'sample_provider.dart';

class SampleController extends GetxController with StateMixin<dynamic> {
  final GlobalKey<FormState> sampleFormKey = GlobalKey<FormState>();

  @override
  void onInit() {
    super.onInit();

    SampleProvider().getSample().then((value) {
      change(value, status: RxStatus.success());
    }, onError: (erorr) {
      change(null, status: RxStatus.error(erorr.toString()));
    });
  }

  @override
  void onClose() {
    super.onClose();
  }
}
