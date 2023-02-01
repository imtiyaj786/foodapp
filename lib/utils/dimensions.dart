import 'dart:ui';
import 'package:get/get.dart';

class Dimensions {
  // Dynamic Screens
  static double screenHeight = Get.context!.height;
  static double screenWidth = Get.context!.width;

  // Dynamic PageViews
  static double pageView = screenHeight / 2.64;
  static double pageViewContainer = screenHeight / 3.84;
  static double pageViewTextContainer = screenHeight / 7.03;

  // Dynamic Height padding and margin
  static double height10 = screenHeight / 84.4;
  static double height15 = screenHeight / 56.27;
  static double height20 = screenHeight / 42.2;
  static double height30 = screenHeight / 28.13;
  static double height45 = screenHeight / 18.76;

  // Dynamic Width padding and margin
  static double width10 = screenHeight / 84.4;
  static double width15 = screenHeight / 56.27;
  static double width20 = screenHeight / 42.2;
  static double width30 = screenHeight / 28.13;
  static double width45 = screenHeight / 18.76;

  // Dynamic Font Size
  static double font16 = screenHeight / 52.75;
  static double font20 = screenHeight / 42.2;
  static double font26 = screenHeight / 32.46;
  // Radius
  static double radius15 = screenHeight / 56.27;
  static double radius20 = screenHeight / 42.2;
  static double radius30 = screenHeight / 28.13;

  // Icon Size
  // 844 / 24
  static double iconSize24 = screenHeight / 35.17;
  static double iconSize16 = screenHeight / 52.75;

  // list view Size
  // 390 / 120
  static double listViewImgSize = screenWidth / 3.15;
  static double listViewTextContSize = screenWidth / 3.9;

  // PopularFoodDetail
  static double popularFoodImgSize = screenHeight / 2.41;

  // bottom height
  static double bottomHeightBar = screenHeight / 7.03;
}
