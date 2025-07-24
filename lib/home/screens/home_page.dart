//TODO: Flutter
import 'package:flutter/material.dart';
//TODO: Internal File
import 'package:food_delivery_app/config/theme/app_colors.dart';
import 'package:food_delivery_app/config/theme/text_style.dart';
import 'package:food_delivery_app/home/widget/food_grid_item.dart';
import 'package:food_delivery_app/home/widget/food_category.dart';
import 'package:food_delivery_app/providers/favorite_provider.dart';
//TODO: Packages
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
    final provider = context.watch<FavoriteProvider>();
    final categoryList = provider.categoryList;

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: height * 0.2,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [AppColors.primaryColor, AppColors.orangeColor],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: EdgeInsets.all(width * 0.02),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: height * 0.06),
                  Row(
                    children: [
                      Text(
                        'Deliver to Cairo',
                        style: AppTextStyles.addressStyle,
                      ),
                      const Icon(Icons.keyboard_arrow_down,
                          color: AppColors.whiteColor),
                      const Spacer(),
                      Stack(
                        alignment: Alignment.topRight,
                        children: [
                          const CircleAvatar(
                            backgroundColor: AppColors.whiteColor,
                            child: Icon(
                              Icons.shopping_bag,
                              color: AppColors.blackColor,
                            ),
                          ),
                          Positioned(
                            right: width * 0.005,
                            top: height * 0.005,
                            child: CircleAvatar(
                              radius: 8,
                              backgroundColor: AppColors.primaryColor,
                              child: const Text(
                                '1',
                                style: TextStyle(
                                  fontSize: 10,
                                  color: AppColors.whiteColor,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: height * 0.01),
                  Container(
                    width: width * 1.0,
                    height: height * 0.06,
                    padding: EdgeInsets.symmetric(horizontal: width * 0.045),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Row(
                      children: [
                        Icon(Icons.search, color: Colors.grey.shade700),
                        SizedBox(width: width * 0.025),
                        const Expanded(
                          child: Text(
                            "Search Your Favorite Food",
                            style: TextStyle(fontWeight: FontWeight.w500),
                          ),
                        ),
                        Icon(Icons.tune, color: Colors.grey.shade700),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: height * 0.02),

          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: height * 0.13,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: categoryList.length,
                    itemBuilder: (context, index) {
                      final isSelected =
                          provider.selectedItem == categoryList[index].id;

                      return Container(
                        width: width * 0.25,
                        margin: EdgeInsets.only(right: width * 0.02),
                        child: InkWell(
                          onTap: () {
                            provider.clickItem(categoryList[index].id);
                          },
                          child: FoodCategory(
                            title: categoryList[index].title,
                            image: categoryList[index].image,
                            cond: isSelected,
                          ),
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(height: 15),
                FoodGridItem(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
