import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nxcar/app/routes/app_pages.dart';

class SignUpController extends GetxController {
  //TODO: Implement SignUpController

  final formkey = GlobalKey<FormState>();

  void onNextClick() {
    if (formkey.currentState!.validate()) {
      Get.toNamed(Routes.OTP);
    }
  }
}
