import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:nxcar/app/utils/app_colors.dart';
import 'package:nxcar/app/utils/app_images.dart';
import 'package:nxcar/app/utils/app_strings.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.white,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
                onPressed: () {
                  Get.back();
                },
                icon: SvgPicture.asset(AppImages.backArrow)),
            const Spacer(),
            SvgPicture.asset(
              AppImages.home,
            ),
            const SizedBox(
              height: 50,
            ),
            const Center(
              child: Text(
                AppStrings.homeText,
                style: TextStyle(fontSize: 20),
              ),
            ),
            const Spacer()
          ],
        ),
      ),
    );
  }
}
