//TODO: Flutter
import 'package:flutter/material.dart';
//TODO: Internal File
import 'package:food_delivery_app/config/images/images_name.dart';
import 'package:food_delivery_app/config/theme/app_colors.dart';
import 'package:food_delivery_app/config/theme/text_style.dart';
import 'package:food_delivery_app/home/screens/food_details_page.dart';
import 'package:food_delivery_app/shared/widget/custom_appbar.dart';
import 'package:food_delivery_app/providers/favorite_provider.dart';
import 'package:food_delivery_app/shared/widget/icon_box.dart';
//TODO: Package
import 'package:provider/provider.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({super.key});

  @override
  Widget build(BuildContext context) {
    final favoriteList = context.watch<FavoriteProvider>().getFavoriteFood;
    final provider = context.watch<FavoriteProvider>();
    return Scaffold(
      appBar: CustomAppBar(title: "Favorite Food"),
      body: favoriteList.isEmpty
          ? Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(ImagesName.nothingImage, height: 300),
                  const SizedBox(height: 20),
                  Text(
                    'No favorite items yet!',
                    style: AppTextStyles.favoriteSentenceStyle1,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Start adding some to see them here.',
                    style: AppTextStyles.favoriteSentenceStyle2,
                  ),
                ],
              ),
            )
          : ListView.builder(
              itemCount: favoriteList.length,
              itemBuilder: (context, index) {
                final food = favoriteList[index];
                return Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 8,
                  ),
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) =>
                              FoodDetailsPage(item: food, foodIndex: index),
                        ),
                      );
                    },
                    child: Card(
                      color: AppColors.whiteColor,
                      elevation: 3,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Container(
                        height: 120,
                        padding: const EdgeInsets.all(8),
                        child: Row(
                          children: [
                            // Image
                            ClipRRect(
                              borderRadius: BorderRadius.circular(12),
                              child: Image.asset(
                                food.imageUrl,
                                fit: BoxFit.cover,
                                height: double.infinity,
                                width: 100,
                                errorBuilder: (context, error, stackTrace) {
                                  return const Icon(
                                    Icons.broken_image,
                                    size: 50,
                                  );
                                },
                              ),
                            ),
                            const SizedBox(width: 12),

                            // Info
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    food.name,
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: const TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(height: 6),
                                  Text(
                                    food.price,
                                    style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: AppColors.primaryColor,
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            // Favorite Icon
                            IconBox(
                              backgroundColor: Colors.deepOrange.withOpacity(
                                0.1,
                              ),
                              color: AppColors.primaryColor,
                              onTap: () => provider.toggleFavorite(food),
                              icon: Icons.favorite,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
    );
  }
}
