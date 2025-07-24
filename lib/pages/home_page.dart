import 'package:flutter/material.dart';
import 'package:food_delivery_app/config/app_colors.dart';
import 'package:food_delivery_app/config/text_style.dart';
import 'package:food_delivery_app/models/category_item.dart';
import 'package:food_delivery_app/models/food_item.dart';
import 'package:food_delivery_app/widgets/food_card.dart';
import 'package:food_delivery_app/widgets/food_category.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header section with gradient and search
          Container(
            height: 180,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [AppColors.primaryColor, AppColors.orangeColor],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 50),
                  Row(
                    children: [
                      Text(
                        'Deliver to Cairo',
                        style: AppTextStyles.addressStyle,
                      ),
                      const Icon(Icons.keyboard_arrow_down, color: AppColors.whiteColor),
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
                            right: 2,
                            top: 2,
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
                  const SizedBox(height: 10),
                  // Search Bar
                  Container(
                    width: double.infinity,
                    height: 55,
                    padding: const EdgeInsets.symmetric(horizontal: 18),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Row(
                      children: [
                        Icon(Icons.search, color: Colors.grey.shade700),
                        const SizedBox(width: 10),
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

          const SizedBox(height: 20),

          // Categories & Food list
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Horizontal Category List
                SizedBox(
                  height: 140,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: categoryList.length,
                    itemBuilder: (context, index) {
                      return Container(
                        width: 100,
                        margin: const EdgeInsets.only(right: 8),
                        child: FoodCategory(
                          title: categoryList[index].title,
                          image: categoryList[index].image,
                        ),
                      );
                    },
                  ),
                ),

                const SizedBox(height: 10),

                // Grid View for Food Items
                GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: foodList.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    childAspectRatio: 0.8,
                  ),
                  itemBuilder: (context, index) {
                    return FoodCard(foodIndex: index);
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
