import 'package:get/get.dart';

import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/otp/bindings/otp_binding.dart';
import '../modules/otp/views/otp_view.dart';
import '../modules/signUp/bindings/sign_up_binding.dart';
import '../modules/signUp/views/sign_up_view.dart';
import '../modules/splash1/bindings/splash1_binding.dart';
import '../modules/splash1/views/splash1_view.dart';
import '../modules/splash2/bindings/splash2_binding.dart';
import '../modules/splash2/views/splash2_view.dart';
import '../modules/splash3/bindings/splash3_binding.dart';
import '../modules/splash3/views/splash3_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH1;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH1,
      page: () => const Splash1View(),
      binding: Splash1Binding(),
    ),
    GetPage(
        name: _Paths.SPLASH2,
        page: () => const Splash2View(),
        binding: Splash2Binding(),
        transition: Transition.leftToRight),
    GetPage(
        name: _Paths.SPLASH3,
        page: () => const Splash3View(),
        binding: Splash3Binding(),
        transition: Transition.leftToRight),
    GetPage(
      name: _Paths.SIGN_UP,
      page: () => const SignUpView(),
      binding: SignUpBinding(),
    ),
    GetPage(
      name: _Paths.OTP,
      page: () => const OtpView(),
      binding: OtpBinding(),
    ),
  ];
}
