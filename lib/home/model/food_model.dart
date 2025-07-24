import 'package:food_delivery_app/config/images/images_name.dart';

class FoodItem {
  String id;
  final String categoryId;
  final String name;
  final String altName;
  final String price;
  final String imageUrl;
  final String time;
  final String description;
  final double rating;
  final String emoji;
  final int calories;
  final String size;
  final bool isFavorite;

  FoodItem({
    required this.id,
    required this.categoryId,
    required this.name,
    required this.altName,
    required this.price,
    required this.imageUrl,
    required this.time,
    required this.description,
    required this.rating,
    required this.emoji,
    required this.calories,
    required this.size,
    this.isFavorite = false,
  });

  FoodItem copyWith({bool? isFavorite}) {
    return FoodItem(
      id: id,
      categoryId: categoryId,
      name: name,
      altName: altName,
      price: price,
      imageUrl: imageUrl,
      time: time,
      description: description,
      rating: rating,
      emoji: emoji,
      calories: calories,
      size: size,
      isFavorite: isFavorite ?? this.isFavorite,
    );
  }
}


