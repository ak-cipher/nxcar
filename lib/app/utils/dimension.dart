import 'dart:ui';

import 'package:flutter/material.dart';

class AppDimension {
  AppDimension._privateConstructor();

  static double height = 0;
  static double width = 0;

  static void init() {
    FlutterView view = WidgetsBinding.instance.platformDispatcher.views.first;

// Dimensions in physical pixels (px)
    Size size = view.physicalSize;
    width = size.width;
    height = size.height;
  }
}
