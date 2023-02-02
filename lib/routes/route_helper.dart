import 'package:foodapp/pages/food/popular_food_detail.dart';
import 'package:foodapp/pages/food/recommended_food_detail.dart';
import 'package:foodapp/pages/home/main_food_page.dart';
import 'package:get/get.dart';

class RouteHelper {
  static const String initial = "/";
  static const String popularFoodDetail = "/popularFoodDetail";
  static const String recommendedFoodDetail = "/recommendedFoodDetail";

  static String getInitial() => "$initial";
  static String getPopularFood(int pageId) =>
      "$popularFoodDetail?pageId=$pageId";
  static String getRecommendedFood(int pageId) =>
      "$recommendedFoodDetail?pageId=$pageId";

  static List<GetPage> routes = [
    GetPage(name: initial, page: () => MainFoodPage()),
    //
    GetPage(
        name: popularFoodDetail,
        page: () {
          var pageId = Get.parameters["pageId"];
          return PopularFoodDetail(pageId: int.parse(pageId!));
        },
        transition: Transition.fadeIn),
    GetPage(
        name: recommendedFoodDetail,
        page: () {
          var pageId = Get.parameters["pageId"];
          return RecommendedFoodDetail(pageId: int.parse(pageId!));
        },
        transition: Transition.zoom),
    // GetPage(name: popularFoodDetail, page: () => PopularFoodDetail()),
  ];
}
