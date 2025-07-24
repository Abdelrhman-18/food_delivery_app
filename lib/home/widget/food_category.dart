//TODO: Flutter
import 'package:flutter/material.dart';
//TODO: Internal File
import 'package:food_delivery_app/config/theme/app_colors.dart';

class FoodCategory extends StatelessWidget {
  final String image;
  final String title;
  final bool cond;
  final VoidCallback? onTap;

  const FoodCategory({
    super.key,
    required this.image,
    required this.title,
    required this.cond,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(16),
      onTap: onTap,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 90,
            width: 90,
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              gradient: cond
                  ? LinearGradient(
                      colors: [AppColors.primaryColor, AppColors.orangeColor],
                      begin: Alignment.bottomRight,
                      end: Alignment.topLeft,
                    )
                  : null,
              color: cond ? null : AppColors.backgroundColor,
              borderRadius: BorderRadius.circular(16),
              boxShadow: cond
                  ? [
                      BoxShadow(
                        color: AppColors.primaryColor.withOpacity(0.4),
                        blurRadius: 8,
                        offset: const Offset(0, 3),
                      ),
                    ]
                  : [],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                image,
                fit: BoxFit.contain,
                errorBuilder: (context, error, stackTrace) {
                  return const Icon(Icons.broken_image, size: 40);
                },
              ),
            ),
          ),
          const SizedBox(height: 8),
          SizedBox(
            width: 90,
            child: Text(
              title,
              textAlign: TextAlign.center,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: cond ? AppColors.primaryColor : Colors.black87,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
