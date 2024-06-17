import 'package:get/get.dart';
import 'package:nxcar/app/routes/app_pages.dart';
import 'package:nxcar/app/utils/dimension.dart';

class Splash1Controller extends GetxController {
  // DIFFERENT SIZE/ POSITION VAR FOR IMAGES TO MOVE AROUND
  // AS WE HAVE TO MOVE WIDGET IN TWO DIRECTION SO WE WILL WIDTH ADN HEIGHT FOR THAT REFERNECE
  RxDouble image1Height = 0.0.obs;
  RxDouble image2Height = 0.0.obs;
  RxDouble image3Height = 0.0.obs;
  RxDouble image4Height = 0.0.obs;
  RxDouble image5Height = 0.0.obs;

  RxDouble image1Width = 0.0.obs;
  RxDouble image2Width = 0.0.obs;
  RxDouble image3Width = 0.0.obs;
  RxDouble image4Width = 0.0.obs;
  RxDouble image5Width = 0.0.obs;

  // to store the current index of the splash the user is
  RxInt currentPage = 0.obs;

  @override
  void onInit() {
    // TODO: implement onInit
    page1Config();
    super.onInit();
  }

  void page1Config() {
    image1Height.value = AppDimension.height * 0.09;
    image1Width.value = AppDimension.width * 0.12;

    image2Height.value = AppDimension.height * 0.04;
    image3Height.value = 0;
    image4Height.value = AppDimension.height * 0.03;
    image5Height.value = AppDimension.height * 0.01;

    image2Width.value = 0;
    image3Width.value = 0;
    image4Width.value = 0;
    image5Width.value = 0;
  }

  void page2Config() {
    image2Height.value = AppDimension.height * 0.1;
    image2Width.value = AppDimension.width * 0.12;

    image1Height.value = AppDimension.height * 0.04;
    image3Height.value = 0;
    image4Height.value = AppDimension.height * 0.03;
    image5Height.value = AppDimension.height * 0.01;

    image1Width.value = 0;
    image3Width.value = 0;
    image4Width.value = 0;
    image5Width.value = 0;
  }

  void page3Config() {
    image4Height.value = AppDimension.height * 0.1;
    image4Width.value = AppDimension.width * 0.12;

    image1Height.value = AppDimension.height * 0.04;
    image3Height.value = 0;
    image2Height.value = AppDimension.height * 0.17;
    image5Height.value = AppDimension.height * 0.01;

    image1Width.value = 0;
    image3Width.value = 0;
    image2Width.value = 0;
    image5Width.value = 0;
    Future.delayed(const Duration(seconds: 1), () {
      page4Config();
      Future.delayed(const Duration(seconds: 1), () {
        page5Config();
      });
    });
  }

  void page4Config() {
    image5Height.value = AppDimension.height * 0.1;
    image5Width.value = AppDimension.width * 0.1;

    image1Height.value = AppDimension.height * 0.04;
    image3Height.value = 0;
    image4Height.value = AppDimension.height * 0.03;

    image2Height.value = AppDimension.height * 0.19;

    image1Width.value = 0;
    image3Width.value = 0;
    image4Width.value = 0;
    image2Width.value = AppDimension.width * 0.22;
  }

  void page5Config() {
    image5Height.value = AppDimension.height * 0.1;
    image5Width.value = AppDimension.width * 0.1;

    image1Height.value = AppDimension.height * 0.16;
    image3Height.value = AppDimension.height * 0.02;
    image4Height.value = AppDimension.width * 0.03;

    image2Height.value = AppDimension.height * 0.001;

    image1Width.value = 0;
    image3Width.value = AppDimension.width * 0.22;
    image4Width.value = AppDimension.width * 0.22;
    image2Width.value = AppDimension.width * 0.22;
  }

  // FAB button click action for splash view
  void onSplashClick() {
    currentPage.value++;
    switch (currentPage.value) {
      case 0:
        page1Config();
        break;
      case 1:
        page2Config();

        break;
      case 2:
        page3Config();
        break;

      case 3:
        Get.toNamed(Routes.SIGN_UP);
        break;
      default:
    }
  }
}
