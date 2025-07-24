import 'package:flutter/material.dart';
import 'package:food_delivery_app/config/app_colors.dart';

final ThemeData myTheme = ThemeData(
  scaffoldBackgroundColor: AppColors.whiteColor,
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    selectedItemColor: AppColors.primaryColor,
    backgroundColor: AppColors.whiteColor,
  ),
  appBarTheme: AppBarTheme(
    titleTextStyle: TextStyle(
      fontWeight: FontWeight.w600,
      fontSize: 30,
      color: Colors.white,
    ),
  ),
);
