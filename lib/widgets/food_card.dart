import 'package:flutter/material.dart';
import 'package:food_delivery_app/config/app_colors.dart';
import 'package:food_delivery_app/config/text_style.dart';

import 'package:food_delivery_app/models/food_item.dart';
import 'package:food_delivery_app/widgets/icon_card.dart';

class FoodCard extends StatefulWidget {
  final int foodIndex;

  const FoodCard({super.key, required this.foodIndex});

  @override
  State<FoodCard> createState() => _FoodCardState();
}

class _FoodCardState extends State<FoodCard> {
  @override
  Widget build(BuildContext context) {
    final foodItem = foodList[widget.foodIndex];

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        children: [
          Container(
            width: 180,
            decoration: BoxDecoration(
              color: AppColors.whiteColor,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: AppColors.greyColor.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 7,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Center(
                    child: SizedBox(
                      width: 125,
                      height: 125,
                      child: Image.asset(
                        foodItem.imageUrl,
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) {
                          return const Icon(Icons.broken_image, size: 50);
                        },
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: Text(
                      foodItem.name,

                      style: AppTextStyles.foodNameStyle,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("20min", style: AppTextStyles.titleAndRateStyle),
                    SizedBox(width: 10),
                    Text("⭐ 4.5", style: AppTextStyles.titleAndRateStyle),
                  ],
                ),
                const SizedBox(height: 1),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: Text(
                        foodItem.price,
                        style: AppTextStyles.priceStyle,
                      ),
                    ),
                    IconCard(
                      icon: Icon(Icons.add, color: AppColors.whiteColor),
                      onTap: () {},
                    ),
                  ],
                ),
              ],
            ),
          ),

          IconCard(
            onTap: () {
              setState(() {
                foodList[widget.foodIndex] = foodItem.copyWith(
                  isFavorite: !foodItem.isFavorite,
                );
              });
            },
            icon: Icon(
              foodItem.isFavorite
                  ? Icons.favorite
                  : Icons.favorite_border_outlined,
              color: AppColors.whiteColor,
              size: 18,
            ),
          ),
        ],
      ),
    );
  }
}
