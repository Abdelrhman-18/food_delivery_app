import 'package:flutter/material.dart';
import 'package:food_delivery_app/config/app_colors.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return const Divider(
      color: AppColors.primaryColor,
      thickness: 2,
      indent: 20,
      endIndent: 20,
    );
  }
}
