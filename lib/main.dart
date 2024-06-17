import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nxcar/app/utils/dimension.dart';

import 'app/routes/app_pages.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  AppDimension.init();
  runApp(
    GetMaterialApp(
      title: "Application",
      theme: ThemeData(fontFamily: "NotoSans"),
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}
