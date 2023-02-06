import 'package:foodapp/pages/cart/cart_page.dart';
import 'package:foodapp/pages/food/popular_food_detail.dart';
import 'package:foodapp/pages/food/recommended_food_detail.dart';
import 'package:foodapp/pages/home/home_page.dart';
import 'package:foodapp/pages/home/main_food_page.dart';
import 'package:get/get.dart';

class RouteHelper {
  static const String initial = "/";
  static const String popularFoodDetail = "/popularFoodDetail";
  static const String recommendedFoodDetail = "/recommendedFoodDetail";
  static const String cartPage = "/cartPage";

  static String getInitial() => "$initial";
  static String getPopularFood(int pageId, String page) =>
      "$popularFoodDetail?pageId=$pageId&page=$page";
  static String getRecommendedFood(int pageId, String page) =>
      "$recommendedFoodDetail?pageId=$pageId&page=$page";
  static String getCartPage() => "$cartPage";

  static List<GetPage> routes = [
    GetPage(name: initial, page: () => HomePage()),
    //
    GetPage(
        name: popularFoodDetail,
        page: () {
          var pageId = Get.parameters["pageId"];
          var page = Get.parameters["page"];
          return PopularFoodDetail(pageId: int.parse(pageId!), page: page!);
        },
        transition: Transition.fadeIn),
    GetPage(
        name: recommendedFoodDetail,
        page: () {
          var pageId = Get.parameters["pageId"];
          var page = Get.parameters["page"];
          return RecommendedFoodDetail(pageId: int.parse(pageId!), page: page!);
        },
        transition: Transition.zoom),
    GetPage(
        name: cartPage,
        page: () {
          return CartPage();
        },
        transition: Transition.fadeIn),
    // GetPage(name: popularFoodDetail, page: () => PopularFoodDetail()),
  ];
}
