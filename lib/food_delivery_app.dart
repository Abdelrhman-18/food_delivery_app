import 'package:flutter/material.dart';
import 'package:food_delivery_app/pages/bottom_nav_page.dart';

import 'config/theme.dart';

class FoodDeliveryApp extends StatelessWidget {
  const FoodDeliveryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: myTheme,
      home: BottomNavPage(),
    );
  }
}

