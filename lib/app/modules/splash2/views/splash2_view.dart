import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:nxcar/app/utils/app_colors.dart';
import 'package:nxcar/app/utils/app_images.dart';
import 'package:nxcar/app/utils/app_strings.dart';

import '../controllers/splash2_controller.dart';

class Splash2View extends GetView<Splash2Controller> {
  const Splash2View({super.key});
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
          statusBarBrightness: Brightness.light,
          statusBarColor: AppColor.white),
      child: SafeArea(
        child: Scaffold(
          backgroundColor: AppColor.white,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: SvgPicture.asset(
                    AppImages.logo,
                  ),
                ),
              ),
              Stack(
                alignment: Alignment.center,
                children: [
                  SvgPicture.asset(
                    AppImages.ellipse4,
                  ),
                  SvgPicture.asset(
                    AppImages.ellipse3,
                  ),
                  SvgPicture.asset(AppImages.ellipse2),
                  SvgPicture.asset(AppImages.ellipse1),
                  AnimatedPositioned(
                      left: 0,
                      bottom: 90,
                      duration: const Duration(milliseconds: 500),
                      child: SvgPicture.asset(AppImages.splash1)),
                  AnimatedPositioned(
                      top: MediaQuery.sizeOf(context).height * 0.25,
                      left: MediaQuery.sizeOf(context).width * 0.33,
                      duration: const Duration(milliseconds: 500),
                      child: SvgPicture.asset(AppImages.splash2)),
                  AnimatedPositioned(
                      right: 0,
                      top: 0,
                      duration: const Duration(milliseconds: 500),
                      child: SvgPicture.asset(AppImages.splash3)),
                  AnimatedPositioned(
                      left: 0,
                      top: MediaQuery.sizeOf(context).height * 0.1,
                      duration: const Duration(milliseconds: 500),
                      child: SvgPicture.asset(AppImages.splash4)),
                  AnimatedPositioned(
                      right: 0,
                      bottom: 20,
                      duration: const Duration(milliseconds: 500),
                      child: SvgPicture.asset(AppImages.splash5)),
                ],
              ),
              const Text(
                AppStrings.splashText2,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          floatingActionButton: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 32.0),
                child: DotsIndicator(
                  dotsCount: 3,
                  decorator: DotsDecorator(
                      size: const Size(15, 15),
                      activeSize: const Size(40, 15),
                      activeColor: AppColor.indicator,
                      color: AppColor.unactiveIndicator,
                      activeShape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      )),
                ),
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  height: 80,
                  width: 80,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: AppColor.tertiary),
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.arrow_forward_ios,
                      color: AppColor.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
