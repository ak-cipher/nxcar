import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:nxcar/app/utils/app_colors.dart';
import 'package:nxcar/app/utils/app_images.dart';
import 'package:nxcar/app/utils/app_strings.dart';

import '../controllers/splash1_controller.dart';

class Splash1View extends GetView<Splash1Controller> {
  const Splash1View({super.key});
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
              Obx(
                () => Stack(
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
                        top: controller.image1Height.value,
                        left: controller.image1Width.value,
                        duration: const Duration(milliseconds: 500),
                        child: SvgPicture.asset(AppImages.splash2)),
                    AnimatedPositioned(
                        left: controller.image2Width.value,
                        top: controller.image2Height.value,
                        duration: const Duration(milliseconds: 500),
                        child: SvgPicture.asset(AppImages.splash4)),
                    AnimatedPositioned(
                        right: controller.image3Width.value,
                        top: controller.image3Height.value,
                        duration: const Duration(milliseconds: 500),
                        child: SvgPicture.asset(AppImages.splash3)),
                    AnimatedPositioned(
                        left: controller.image4Width.value,
                        bottom: controller.image4Height.value,
                        duration: const Duration(milliseconds: 500),
                        child: SvgPicture.asset(AppImages.splash1)),
                    AnimatedPositioned(
                        right: controller.image5Width.value,
                        bottom: controller.image5Height.value,
                        duration: const Duration(milliseconds: 500),
                        child: SvgPicture.asset(AppImages.splash5)),
                  ],
                ),
              ),
              Obx(() => Text(
                    controller.currentPage.value == 0
                        ? AppStrings.splashText1
                        : controller.currentPage.value == 1
                            ? AppStrings.splashText2
                            : AppStrings.splashText3,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                        fontSize: 28, fontWeight: FontWeight.bold),
                  )),
            ],
          ),
          floatingActionButton: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 32.0),
                child: Obx(() => DotsIndicator(
                      dotsCount: 3,
                      position: controller.currentPage.value,
                      decorator: DotsDecorator(
                          size: const Size(15, 15),
                          activeSize: const Size(40, 15),
                          activeColor: AppColor.indicator,
                          color: AppColor.unactiveIndicator,
                          activeShape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          )),
                    )),
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
                    onPressed: () {
                      controller.onSplashClick();
                    },
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
