//TODO: Flutter
import 'package:flutter/material.dart';
//TODO: Internal File
import 'package:food_delivery_app/config/theme/app_colors.dart';

class CustomCard extends StatelessWidget {
  final String title;
  final String image;
  final String title2;
  final String image2;

  const CustomCard({
    super.key,
    required this.title,
    required this.image,
    required this.title2,
    required this.image2,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.whiteColor,
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Container(
        height: 70,
        width: 360,
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 55,
              width: 50,
              child: Image.asset(image, fit: BoxFit.cover),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Text(
                title,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ), VerticalDivider(
              color: Colors.grey.withOpacity(0.30),
              indent: 13,
              endIndent: 13,
            ),
            SizedBox(
              height: 55,
              width: 50,
              child: Image.asset(image2, fit: BoxFit.cover),
            ),
            const SizedBox(width: 10),

            Expanded(
              child: Text(
                title2,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
