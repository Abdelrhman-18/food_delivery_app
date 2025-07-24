import 'package:flutter/material.dart';
import 'package:food_delivery_app/config/app_colors.dart';
import 'package:food_delivery_app/config/text_style.dart';
import 'package:food_delivery_app/models/food_item.dart';
import 'package:food_delivery_app/widgets/custom_appbar.dart';

class FavoritePage extends StatefulWidget {
  const FavoritePage({super.key});

  @override
  State<FavoritePage> createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  final favoriteFood = foodList
      .where((foodItem) => foodItem.isFavorite)
      .toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "Favorite Food"),
      body: favoriteFood.isEmpty
          ? Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/images/nothing_here.png", height: 300),
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
              itemCount: favoriteFood.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 8,
                  ),
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
                              favoriteFood[index].imageUrl,
                              fit: BoxFit.cover,
                              height: double.infinity,
                              width: 100,
                              errorBuilder: (context, error, stackTrace) {
                                return const Icon(Icons.broken_image, size: 50);
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
                                  favoriteFood[index].name,
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: const TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(height: 6),
                                Text(
                                  favoriteFood[index].price,
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
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.deepOrange.withOpacity(0.1),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: IconButton(
                              onPressed: () {
                                final targetedItem = favoriteFood[index];
                                int targetedIndex = foodList.indexOf(
                                  targetedItem,
                                );
                                setState(() {
                                  foodList[targetedIndex] =
                                      foodList[targetedIndex].copyWith(
                                        isFavorite: false,
                                      );
                                  favoriteFood.remove(targetedItem);
                                });
                              },
                              icon: Icon(
                                Icons.favorite,
                                color: AppColors.primaryColor,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
    );
  }
}
