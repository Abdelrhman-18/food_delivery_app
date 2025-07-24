import 'package:flutter/material.dart';
import 'package:food_delivery_app/config/theme/app_colors.dart';

class AppTextStyles {
  static final foodNameStyle = const TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.bold,
    color: AppColors.blackColor,
  );
  static final titleAndRateStyle = const TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.bold,
    color: AppColors.greyColor,
  );
  static final priceStyle = const TextStyle(
    fontSize: 16,
    color: AppColors.blackColor,
    fontWeight: FontWeight.w500,
  );
  static final addressStyle = const TextStyle(
    color: AppColors.whiteColor,
    fontSize: 18,
    fontWeight: FontWeight.w500,
  );
  static final favoriteSentenceStyle1 = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: Colors.grey[600],
  );
  static final favoriteSentenceStyle2 = TextStyle(
    fontSize: 16,
    color: Colors.grey[500],
  );
}
