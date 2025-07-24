//TODO: Flutter
import 'package:flutter/material.dart';
//TODO: Internal File
import 'package:food_delivery_app/food_delivery_app.dart';
import 'package:food_delivery_app/providers/favorite_provider.dart';
//TODO: Packages
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => FavoriteProvider()),
      ],
      child: const FoodDeliveryApp(),
    ),
  );
}
