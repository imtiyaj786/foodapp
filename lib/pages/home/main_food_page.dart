import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter/src/widgets/placeholder.dart';
import 'package:foodapp/pages/home/food_page_body.dart';
import 'package:foodapp/utils/colors.dart';
import 'package:foodapp/utils/dimensions.dart';
import 'package:foodapp/widgets/big_text.dart';
import 'package:foodapp/widgets/small_text.dart';
import 'package:get/get.dart';
import 'package:foodapp/Controllers/popular_product_controller.dart';
import 'package:foodapp/Controllers/recommended_product_controller.dart';

class MainFoodPage extends StatefulWidget {
  const MainFoodPage({super.key});

  @override
  State<MainFoodPage> createState() => _MainFoodPage();
}

class _MainFoodPage extends State<MainFoodPage> {
  Future<void> _loadResource() async {
    await Get.find<PopularProductController>().getPopularProductList();
    await Get.find<RecommendedProductController>().getRecommendedProductList();
  }

  @override
  Widget build(BuildContext context) {
    // print("Current Height " + MediaQuery.of(context).size.height.toString());
    return RefreshIndicator(
        child: Column(
          children: [
            // Showing Header
            Container(
              child: Container(
                  margin: EdgeInsets.only(
                      top: Dimensions.height45, bottom: Dimensions.height15),
                  padding: EdgeInsets.only(
                      left: Dimensions.width20, right: Dimensions.width20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          BigText(
                            text: "India",
                            color: AppColors.mainColor,
                            size: 20,
                          ),
                          Row(children: [
                            SmallText(
                                text: "Ajmer",
                                color: Colors.black54,
                                size: 12,
                                height: 1.2),
                            Icon(Icons.arrow_drop_down_rounded)
                          ])
                        ],
                      ),
                      Center(
                        child: Container(
                          width: Dimensions.height45,
                          height: Dimensions.height45,
                          child: Icon(Icons.search,
                              color: Colors.white, size: Dimensions.iconSize24),
                          decoration: BoxDecoration(
                            color: AppColors.mainColor,
                            borderRadius:
                                BorderRadius.circular(Dimensions.radius15),
                          ),
                        ),
                      )
                    ],
                  )),
            ),
            // Showing Body
            Expanded(
              child: SingleChildScrollView(
                child: FoodPageBody(),
              ),
            ),
          ],
        ),
        onRefresh: _loadResource);
  }
}
