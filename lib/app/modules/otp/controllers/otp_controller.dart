import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nxcar/app/routes/app_pages.dart';

class OtpController extends GetxController {
  //TODO: Implement OtpController

  final formkey = GlobalKey<FormState>();

  TextEditingController otpController = TextEditingController();

  void onNextClick() {
    if(formkey.currentState!.validate()) {
                        Get.toNamed(Routes.HOME);

    }
  }

}
