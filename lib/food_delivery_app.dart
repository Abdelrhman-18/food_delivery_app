//TODO:Flutter
import 'package:flutter/material.dart';
//TODO:Internal (Files)
import 'bottom_nav/bottom_nav_page.dart';
import 'config/theme/theme.dart';

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

