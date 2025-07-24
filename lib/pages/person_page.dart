import 'package:flutter/material.dart';
import 'package:food_delivery_app/config/app_colors.dart';
import 'package:food_delivery_app/widgets/custom_appbar.dart';
import 'package:food_delivery_app/widgets/custom_card.dart';
import 'package:food_delivery_app/widgets/custom_divider.dart';

class PersonPage extends StatelessWidget {
  const PersonPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "Profile"),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const SizedBox(height: 30),
            Center(
              child: Container(
                height: 250,
                width: 250,
                decoration: BoxDecoration(
                  border: Border.all(color: AppColors.primaryColor, width: 3),
                  borderRadius: BorderRadius.circular(400),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(400),
                  child: Image.asset(
                    "assets/images/profile_image.png",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              "Abdelrhman Khaled",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),

            const SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomCard(
                  title: "104 points",
                  image: "assets/images/points_image.jpg",
                ),

                const SizedBox(width: 10),
                CustomCard(
                  title: "10 vouchers",
                  image: "assets/images/voucher_image.jpg",
                ),
              ],
            ),
            const SizedBox(height: 20),
            CustomDivider(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: 380,
                child: Row(
                  children: const [
                    Icon(
                      Icons.shopping_cart,
                      color: AppColors.primaryColor,
                      size: 35,
                    ),
                    SizedBox(width: 10),
                    Text(
                      "Past Orders",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                      ),
                    ),
                    Spacer(),
                    Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: AppColors.primaryColor,
                      size: 30,
                    ),
                  ],
                ),
              ),
            ),
            CustomDivider(),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: 380,
                child: Row(
                  children: const [
                    Icon(
                      Icons.card_giftcard,
                      color: AppColors.primaryColor,
                      size: 35,
                    ),
                    SizedBox(width: 10),
                    Text(
                      "Available Voucher",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                      ),
                    ),
                    Spacer(),
                    Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: AppColors.primaryColor,
                      size: 30,
                    ),
                  ],
                ),
              ),
            ),
            CustomDivider(),
          ],
        ),
      ),
    );
  }
}
