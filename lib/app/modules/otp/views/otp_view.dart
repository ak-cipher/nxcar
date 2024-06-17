import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:nxcar/app/utils/app_colors.dart';
import 'package:nxcar/app/utils/app_images.dart';
import 'package:nxcar/app/utils/app_strings.dart';
import 'package:nxcar/app/utils/app_validators.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../controllers/otp_controller.dart';

class OtpView extends GetView<OtpController> {
  const OtpView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.white,
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              IconButton(
                  onPressed: () {
                    Get.back();
                  },
                  icon: SvgPicture.asset(AppImages.backArrow)),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: Text(
                  AppStrings.enterOtp,
                  style: TextStyle(fontSize: 20),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  AppStrings.number,
                  style: TextStyle(fontSize: 16),
                ),
              ),
              Form(
                key: controller.formkey,
                child: PinCodeTextField(
                  appContext: context,
                  length: 4,
                  inputFormatters: const [],
                  onChanged: (value) {},
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  pinTheme: PinTheme(
                    shape: PinCodeFieldShape.box,
                    borderRadius: BorderRadius.circular(10),
                    fieldHeight: 60,
                    fieldWidth: 60,
                    borderWidth: 2,
                    inactiveColor: AppColor.textFieldBorder,
                    activeColor: AppColor.secondary,
                    selectedColor: AppColor.grey480,
                    inactiveFillColor: Colors.transparent,
                    activeFillColor: AppColor.white,
                    selectedFillColor: AppColor.white,
                  ),
                  keyboardType: TextInputType.number,
                  cursorColor: AppColor.primary,
                  enableActiveFill: true,
                  animationType: AnimationType.fade,
                  controller: controller.otpController,
                  enablePinAutofill: true,
                  validator: AppValidators.otpValidator,
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  AppStrings.resend,
                  style: TextStyle(fontSize: 16, color: AppColor.primary),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12.0),
                          )),
                          backgroundColor: MaterialStateProperty.all<Color>(
                              AppColor.tertiary)),
                      onPressed: () {
                        controller.onNextClick();
                      },
                      // onPressed: () => controller.onNextClick(),
                      child: const Padding(
                        padding: EdgeInsets.symmetric(vertical: 8.0),
                        child: Text(
                          AppStrings.next,
                          style: TextStyle(color: AppColor.white, fontSize: 20),
                        ),
                      )),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
