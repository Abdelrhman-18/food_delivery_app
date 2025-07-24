//TODO: Flutter
import 'package:flutter/material.dart';
//TODO: Internal File
import 'package:food_delivery_app/config/theme/app_colors.dart';
import 'package:food_delivery_app/config/theme/text_style.dart';
import 'package:food_delivery_app/home/model/food_model.dart';
import 'package:food_delivery_app/home/screens/food_details_page.dart';
import 'package:food_delivery_app/home/widget/icon_card.dart';
import 'package:food_delivery_app/providers/favorite_provider.dart';
import 'package:provider/provider.dart';




class FoodGridItem extends StatelessWidget {
  const FoodGridItem({super.key});
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
    final provider = context.watch<FavoriteProvider>();
    final foodList = context.watch<FavoriteProvider>().getFilteredFood;

    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: foodList.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: width * 0.03,
        mainAxisSpacing: height * 0.02,
        childAspectRatio: (width * 0.42) / (height * 0.26),
      ),
      itemBuilder: (context, index) {
        final food = foodList[index];
        return InkWell(
          onTap: () {
            Navigator.of(context)
                .push(
              MaterialPageRoute(
                builder: (context) => FoodDetailsPage(
                  item: food,
                  foodIndex: index,
                ),
              ),
            )
               ;
          },
          child: Stack(
            children: [
              Container(
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
                  children: [
                    _buildImage(food, width, height),
                    SizedBox(height: height * 0.015),
                    _buildFoodNameAndDetails(food, width),
                    SizedBox(height: height * 0.015),
                    _buildPriceAndAddButton(food, width),
                  ],
                ),
              ),
              IconCard(
                icon: Icon(
                  food.isFavorite ? Icons.favorite : Icons.favorite_border,
                  color: AppColors.whiteColor,
                ),
                onTap: () => provider.toggleFavorite(food),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _buildFoodNameAndDetails(FoodItem foodItem, double width) {
    return Center(
      child: Column(
        children: [
          Text(foodItem.name, style: AppTextStyles.foodNameStyle),
          const SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(foodItem.time, style: AppTextStyles.titleAndRateStyle),
              SizedBox(width: width * 0.03),
              Text("⭐ ${foodItem.rating}", style: AppTextStyles.titleAndRateStyle),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildPriceAndAddButton(FoodItem foodItem, double width) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 15.0),
          child: Text(foodItem.price, style: AppTextStyles.priceStyle),
        ),
        IconCard(
          icon: const Icon(Icons.add, color: AppColors.whiteColor),
          onTap: () {},
        ),
      ],
    );
  }

  Widget _buildImage(FoodItem foodItem, double width, double height) {
    return Container(
      width: width * 0.35,
      height: height * 0.15,
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          image: AssetImage(foodItem.imageUrl),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
