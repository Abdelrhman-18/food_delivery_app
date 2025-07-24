//TODO: Flutter
import 'package:flutter/material.dart';
//TODO: Internal File
import 'package:food_delivery_app/config/theme/app_colors.dart';
import 'package:food_delivery_app/config/theme/text_style.dart';
import 'package:food_delivery_app/home/model/food_model.dart';
import 'package:food_delivery_app/home/widget/custom_card.dart';
import 'package:food_delivery_app/providers/favorite_provider.dart';
import 'package:food_delivery_app/shared/widget/icon_box.dart';
//TODO: Packages
import 'package:provider/provider.dart';

class FoodDetailsPage extends StatefulWidget {
  final FoodItem item;
  final int foodIndex;

  const FoodDetailsPage({
    super.key,
    required this.item,
    required this.foodIndex,
  });

  @override
  State<FoodDetailsPage> createState() => _FoodDetailsPageState();
}

class _FoodDetailsPageState extends State<FoodDetailsPage> {
  bool flag = true;

  @override
  Widget build(BuildContext context) {
    final provider = context.watch<FavoriteProvider>();
    final foodList = provider.getFilteredFood;

    return Scaffold(
      backgroundColor: Colors.deepOrange,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            expandedHeight: MediaQuery.sizeOf(context).height * 0.35,
            backgroundColor: Colors.deepOrange,
            leading: IconBox(
              color: AppColors.whiteColor,
              backgroundColor: Colors.white38.withOpacity(0.1),
              icon: Icons.arrow_back_ios_new,
              onTap: () {
                Navigator.of(context).pop();
              },
            ),
            actions: [
              IconBox(
                color: AppColors.whiteColor,
                backgroundColor: Colors.white38.withOpacity(0.1),
                icon: foodList[widget.foodIndex].isFavorite
                    ? Icons.favorite
                    : Icons.favorite_border_outlined,
                onTap: () {
                  provider.toggleFavorite(foodList[widget.foodIndex]);
                },
              ),
            ],
            flexibleSpace: FlexibleSpaceBar(
              background: Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 10.0),
                  child: Image.asset(
                    foodList[widget.foodIndex].imageUrl,
                    fit: BoxFit.contain,
                    height: MediaQuery.sizeOf(context).height * 0.3,
                  ),
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              Container(
                width: double.infinity,
                height: 700,
                padding: const EdgeInsets.all(16),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(32),
                    topRight: Radius.circular(32),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      foodList[widget.foodIndex].name,
                      style: AppTextStyles.foodNameStyle.copyWith(fontSize: 38),
                    ),
                    Text(
                      "${foodList[widget.foodIndex].altName} ${foodList[widget.foodIndex].emoji}",
                      style: AppTextStyles.titleAndRateStyle,
                    ),
                    const SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomCard(
                          name: "Size",
                          about: foodList[widget.foodIndex].size,
                        ),
                        CustomCard(
                          name: "Calories",
                          about: foodList[widget.foodIndex].calories.toString(),
                        ),
                        CustomCard(
                          name: "Time",
                          about: foodList[widget.foodIndex].time,
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          foodList[widget.foodIndex].description,
                          maxLines: flag ? 2 : 30,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: TextButton(
                            onPressed: () {
                              setState(() {
                                flag = !flag;
                              });
                            },
                            child: Text(
                              flag ? "Read More" : "Read Less",
                              style: const TextStyle(color: Colors.deepOrange),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 80),
                  ],
                ),
              ),
            ]),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            spacing: 10,
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  height: 55,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(40),
                    border: Border.all(color: Colors.grey),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: provider.decrementCounter,
                        icon: const Icon(Icons.remove),
                        color: provider.counter == 1
                            ? Colors.grey
                            : Colors.deepOrange,
                      ),
                      Text(
                        provider.counter.toString(),
                        style: const TextStyle(fontSize: 18),
                      ),
                      IconButton(
                        onPressed: provider.incrementCounter,
                        icon: const Icon(Icons.add, color: Colors.deepOrange),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 3,
                child: Container(
                  height: 55,
                  decoration: BoxDecoration(
                    color: Colors.deepOrange,
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    spacing: 15,
                    children: [
                      const Text(
                        "Add item",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        foodList[widget.foodIndex].price,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
