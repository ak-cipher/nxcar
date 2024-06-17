import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:nxcar/app/utils/app_colors.dart';
import 'package:nxcar/app/utils/app_images.dart';
import 'package:nxcar/app/utils/app_strings.dart';
import 'package:nxcar/app/utils/app_validators.dart';

import '../controllers/sign_up_controller.dart';

class SignUpView extends GetView<SignUpController> {
  const SignUpView({super.key});
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
                  AppStrings.welcomeback,
                  style: TextStyle(fontSize: 20),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  AppStrings.detailFill,
                  style: TextStyle(fontSize: 16),
                ),
              ),
              Form(
                  key: controller.formkey,
                  child: Column(
                    children: [
                      // NUMBER TEXT FIELD
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          validator: AppValidators.numberValidator,
                          maxLength: 10,
                          decoration: InputDecoration(
                            hintText: AppStrings.numberHint,
                            filled: true,
                            fillColor: AppColor.textFieldFill,
                            enabledBorder: OutlineInputBorder(
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(12)),
                                borderSide: BorderSide(
                                    color: AppColor.textFieldBorder
                                        .withOpacity(0.2))),
                            border: OutlineInputBorder(
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(12)),
                                borderSide: BorderSide(
                                    color: AppColor.textFieldBorder
                                        .withOpacity(0.2))),
                            focusedBorder: OutlineInputBorder(
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(12)),
                                borderSide: BorderSide(
                                    color: AppColor.textFieldBorder
                                        .withOpacity(0.2))),
                            label: RichText(
                              text: const TextSpan(
                                  text: AppStrings.numberHint,
                                  style: TextStyle(
                                      color: AppColor.textFieldLabel,
                                      fontSize: 16),
                                  children: [
                                    TextSpan(
                                        text: ' *',
                                        style: TextStyle(
                                            color: AppColor.red, fontSize: 16))
                                  ]),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              textScaler: const TextScaler.linear(1),
                            ),
                          ),
                        ),
                      ),

                      // NAME TEXT FIELD

                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          validator: AppValidators.nameValidator,
                          maxLength: 30,
                          decoration: InputDecoration(
                            hintText: AppStrings.numberHint,
                            filled: true,
                            fillColor: AppColor.textFieldFill,
                            enabledBorder: OutlineInputBorder(
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(12)),
                                borderSide: BorderSide(
                                    color: AppColor.textFieldBorder
                                        .withOpacity(0.2))),
                            border: OutlineInputBorder(
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(12)),
                                borderSide: BorderSide(
                                    color: AppColor.textFieldBorder
                                        .withOpacity(0.2))),
                            focusedBorder: OutlineInputBorder(
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(12)),
                                borderSide: BorderSide(
                                    color: AppColor.textFieldBorder
                                        .withOpacity(0.2))),
                            label: RichText(
                              text: const TextSpan(
                                  text: AppStrings.nameHint,
                                  style: TextStyle(
                                      color: AppColor.textFieldLabel,
                                      fontSize: 16),
                                  children: [
                                    TextSpan(
                                        text: ' *',
                                        style: TextStyle(
                                            color: AppColor.red, fontSize: 16))
                                  ]),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              textScaler: const TextScaler.linear(1),
                            ),
                          ),
                        ),
                      ),
                      // EMAIL TEXT FIELD

                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          validator: AppValidators.emailValidator,
                          maxLength: 50,
                          decoration: InputDecoration(
                            hintText: AppStrings.numberHint,
                            filled: true,
                            fillColor: AppColor.textFieldFill,
                            enabledBorder: OutlineInputBorder(
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(12)),
                                borderSide: BorderSide(
                                    color: AppColor.textFieldBorder
                                        .withOpacity(0.2))),
                            border: OutlineInputBorder(
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(12)),
                                borderSide: BorderSide(
                                    color: AppColor.textFieldBorder
                                        .withOpacity(0.2))),
                            focusedBorder: OutlineInputBorder(
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(12)),
                                borderSide: BorderSide(
                                    color: AppColor.textFieldBorder
                                        .withOpacity(0.2))),
                            label: RichText(
                              text: const TextSpan(
                                  text: AppStrings.emailHint,
                                  style: TextStyle(
                                      color: AppColor.textFieldLabel,
                                      fontSize: 16),
                                  children: [
                                    TextSpan(
                                        text: ' *',
                                        style: TextStyle(
                                            color: AppColor.red, fontSize: 16))
                                  ]),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              textScaler: const TextScaler.linear(1),
                            ),
                          ),
                        ),
                      ),

                      // VEHICLE TEXT FIELD

                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          validator: AppValidators.numberValidator,
                          maxLength: 12,
                          decoration: InputDecoration(
                            hintText: AppStrings.numberHint,
                            filled: true,
                            fillColor: AppColor.textFieldFill,
                            enabledBorder: OutlineInputBorder(
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(12)),
                                borderSide: BorderSide(
                                    color: AppColor.textFieldBorder
                                        .withOpacity(0.2))),
                            border: OutlineInputBorder(
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(12)),
                                borderSide: BorderSide(
                                    color: AppColor.textFieldBorder
                                        .withOpacity(0.2))),
                            focusedBorder: OutlineInputBorder(
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(12)),
                                borderSide: BorderSide(
                                    color: AppColor.textFieldBorder
                                        .withOpacity(0.2))),
                            label: RichText(
                              text: const TextSpan(
                                  text: AppStrings.vehicleHint,
                                  style: TextStyle(
                                      color: AppColor.textFieldLabel,
                                      fontSize: 16),
                                  children: [
                                    TextSpan(
                                        text: ' *',
                                        style: TextStyle(
                                            color: AppColor.red, fontSize: 16))
                                  ]),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              textScaler: const TextScaler.linear(1),
                            ),
                          ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                              style: ButtonStyle(
                                  shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12.0),
                                  )),
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                          AppColor.tertiary)),
                              onPressed: () => controller.onNextClick(),
                              child: const Padding(
                                padding: EdgeInsets.symmetric(vertical: 8.0),
                                child: Text(
                                  AppStrings.next,
                                  style: TextStyle(
                                      color: AppColor.white, fontSize: 20),
                                ),
                              )),
                        ),
                      )
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
