//TODO: Flutter
import 'package:flutter/material.dart';
//TODO: Internal File
import 'package:food_delivery_app/config/images/images_name.dart';
import 'package:food_delivery_app/config/theme/app_colors.dart';
import 'package:food_delivery_app/shared/widget/custom_appbar.dart';
import 'package:food_delivery_app/profile/widget/custom_card.dart';

class PersonPage extends StatelessWidget {
  const PersonPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "Profile"),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const SizedBox(height: 30),
              Center(
                child: Container(
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                    border: Border.all(color: AppColors.primaryColor, width: 3),
                    borderRadius: BorderRadius.circular(400),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(400),
                    child: Image.asset(
                      ImagesName.profileImage,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                "Abdelrhman Khaled",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
              ),

              const SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomCard(
                    title: "104 points",
                    image: ImagesName.pointes,
                    title2: "10 vouchers",
                    image2: ImagesName.voucher,
                  ),
                ],
              ),
              const SizedBox(height: 20),

              Card(
                color: AppColors.whiteColor,
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Container(
                  height: 60,
                  width: 360,
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Padding(
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
                ),
              ),
              Card(
                color: AppColors.whiteColor,
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Container(
                  height: 70,
                  width: 360,
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Padding(
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
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
