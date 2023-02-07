import 'package:flutter/material.dart';
import 'package:foodapp/Controllers/cart_controller.dart';
import 'package:foodapp/Controllers/popular_product_controller.dart';
import 'package:foodapp/Controllers/recommended_product_controller.dart';
import 'package:foodapp/pages/food/popular_food_detail.dart';
import 'package:foodapp/pages/food/recommended_food_detail.dart';
import 'package:foodapp/pages/home/food_page_body.dart';
import 'package:foodapp/pages/home/main_food_page.dart';
import 'package:foodapp/pages/splash/splash_page.dart';
import 'package:foodapp/routes/route_helper.dart';
import 'package:get/get.dart';
import 'helper/dependencies.dart' as dep;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dep.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // whit the help of this we can save storage info
    Get.find<CartController>().getCartData();
    return GetBuilder<PopularProductController>(builder: (_) {
      return GetBuilder<RecommendedProductController>(builder: (_) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Imtiyaj Alam',
          theme: ThemeData(
            // This is the theme of your application.
            primarySwatch: Colors.blue,
          ),
          // home: MainFoodPage(),
          initialRoute: RouteHelper.getSplashPage(),
          getPages: RouteHelper.routes,
        );
      });
    });
  }
}
