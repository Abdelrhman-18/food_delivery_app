//TODO: Flutter
import 'package:flutter/material.dart';
//TODO: Internal File
import 'package:food_delivery_app/config/images/images_name.dart';
import 'package:food_delivery_app/home/model/category_model.dart';
import 'package:food_delivery_app/home/model/food_model.dart';


class FavoriteProvider with ChangeNotifier {
  List<FoodItem> foodList = [
    // ================= PIZZA (id = 1) =================
    FoodItem(
      id: '1',
      categoryId: "1",
      name: "Pizza",
      altName: "Italian Pie",
      price: "150 EGP",
      imageUrl: ImagesName.pizza2,
      time: "20 min",
      description:
          "A freshly baked Italian pizza with mozzarella cheese and black olives "
          "for an authentic Mediterranean flavor.",
      rating: 4.7,
      emoji: "🍕",
      calories: 280,
      size: "Large",
    ),
    FoodItem(
      id: '2',
      categoryId: "1",
      name: "Pizza",
      altName: "Italian Pie",
      price: "150 EGP",
      imageUrl: ImagesName.pizza3,
      time: "20 min",
      description:
          "Pepperoni pizza with melted cheese and spicy slices for meat lovers.",
      rating: 4.9,
      emoji: "🍕",
      calories: 300,
      size: "Large",
    ),
    FoodItem(
      id: '3',
      categoryId: "1",
      name: "Pizza",
      altName: "Italian Pie",
      price: "150 EGP",
      imageUrl: ImagesName.pizza4,
      time: "20 min",
      description: "Cheese lovers’ pizza with double mozzarella and parmesan.",
      rating: 4.8,
      emoji: "🍕",
      calories: 310,
      size: "Large",
    ),
    FoodItem(
      id: '4',
      categoryId: "1",
      name: "Pizza",
      altName: "Italian Pie",
      price: "150 EGP",
      imageUrl: ImagesName.pizza5,
      time: "20 min",
      description:
          "Veggie pizza with mushrooms, onions, peppers, and black olives.",
      rating: 4.7,
      emoji: "🍕",
      calories: 260,
      size: "Large",
    ),
    FoodItem(
      id: '5',
      categoryId: "1",
      name: "Pizza",
      altName: "Italian Pie",
      price: "150 EGP",
      imageUrl: ImagesName.pizza6,
      time: "20 min",
      description:
          "BBQ chicken pizza with smoky sauce, grilled chicken, and onions.",
      rating: 4.9,
      emoji: "🍕",
      calories: 320,
      size: "Large",
    ),

    // ================= BURGER (id = 2) =================
    FoodItem(
      id: '6',
      categoryId: "2",
      name: "Burger",
      altName: "Beef Sandwich",
      price: "120 EGP",
      imageUrl: ImagesName.burger1,
      time: "15 min",
      description:
          "Grilled beef burger seasoned with spices. Served in a bun with lettuce, tomatoes, and sauce.",
      rating: 4.6,
      emoji: "🍔",
      calories: 350,
      size: "Medium",
    ),
    FoodItem(
      id: '7',
      categoryId: "2",
      name: "Burger",
      altName: "Cheese Burger",
      price: "120 EGP",
      imageUrl: ImagesName.burger2,
      time: "15 min",
      description: "Cheese burger with cheddar cheese, onions, and pickles.",
      rating: 4.7,
      emoji: "🍔",
      calories: 360,
      size: "Medium",
    ),
    FoodItem(
      id: '8',
      categoryId: "2",
      name: "Burger",
      altName: "Double Beef Burger",
      price: "120 EGP",
      imageUrl: ImagesName.burger3,
      time: "15 min",
      description: "Double beef patties with fresh veggies and special sauce.",
      rating: 4.8,
      emoji: "🍔",
      calories: 420,
      size: "Large",
    ),
    FoodItem(
      id: '9',
      categoryId: "2",
      name: "Burger",
      altName: "Chicken Burger",
      price: "120 EGP",
      imageUrl: ImagesName.burger4,
      time: "15 min",
      description: "Grilled chicken burger with garlic mayo and fresh lettuce.",
      rating: 4.6,
      emoji: "🍔",
      calories: 330,
      size: "Medium",
    ),
    FoodItem(
      id: '10',
      categoryId: "2",
      name: "Burger",
      altName: "Mushroom Burger",
      price: "120 EGP",
      imageUrl: ImagesName.burger5,
      time: "15 min",
      description:
          "Beef burger topped with sautéed mushrooms and Swiss cheese.",
      rating: 4.7,
      emoji: "🍔",
      calories: 370,
      size: "Medium",
    ),
    FoodItem(
      id: '11',
      categoryId: "2",
      name: "Burger",
      altName: "BBQ Burger",
      price: "120 EGP",
      imageUrl: ImagesName.burger6,
      time: "15 min",
      description:
          "Smoky BBQ beef burger with crispy onions and cheddar cheese.",
      rating: 4.8,
      emoji: "🍔",
      calories: 390,
      size: "Large",
    ),
    FoodItem(
      id: '12',
      categoryId: "2",
      name: "Burger",
      altName: "Veggie Burger",
      price: "120 EGP",
      imageUrl: ImagesName.burger7,
      time: "15 min",
      description:
          "Healthy veggie burger with chickpeas, beans, and fresh salad.",
      rating: 4.5,
      emoji: "🍔",
      calories: 280,
      size: "Medium",
    ),

    // ================= PASTA (id = 3) =================
    FoodItem(
      id: '13',
      categoryId: "3",
      name: "Pasta",
      altName: "Spaghetti",
      price: "120 EGP",
      imageUrl: ImagesName.pasta1,
      time: "15 min",
      description:
          "Classic spaghetti with tomato sauce, garlic, and fresh basil.",
      rating: 4.5,
      emoji: "🍝",
      calories: 290,
      size: "Medium",
    ),
    FoodItem(
      id: '14',
      categoryId: "3",
      name: "Pasta",
      altName: "Creamy Alfredo",
      price: "120 EGP",
      imageUrl: ImagesName.pasta2,
      time: "15 min",
      description: "Creamy Alfredo pasta with parmesan and butter sauce.",
      rating: 4.7,
      emoji: "🍝",
      calories: 320,
      size: "Medium",
    ),
    FoodItem(
      id: '15',
      categoryId: "3",
      name: "Pasta",
      altName: "Seafood Pasta",
      price: "120 EGP",
      imageUrl: ImagesName.pasta3,
      time: "15 min",
      description: "Pasta with shrimps, calamari, and light tomato sauce.",
      rating: 4.8,
      emoji: "🍝",
      calories: 340,
      size: "Large",
    ),
    FoodItem(
      id: '16',
      categoryId: "3",
      name: "Pasta",
      altName: "Penne Arrabiata",
      price: "120 EGP",
      imageUrl: ImagesName.pasta4,
      time: "15 min",
      description: "Spicy penne pasta with chili, tomato, and garlic.",
      rating: 4.6,
      emoji: "🍝",
      calories: 310,
      size: "Medium",
    ),
    FoodItem(
      id: '17',
      categoryId: "3",
      name: "Pasta",
      altName: "Lasagna",
      price: "120 EGP",
      imageUrl: ImagesName.pasta5,
      time: "15 min",
      description:
          "Layered lasagna with minced beef, tomato sauce, and cheese.",
      rating: 4.9,
      emoji: "🍝",
      calories: 380,
      size: "Large",
    ),
  ];
  List<FoodItem> favoriteFood = [];
  List<FoodItem> filteredFood = [];
  List<CategoryItem> categoryList = [
    CategoryItem(
      id: "2",
      title: "burger",
      image: ImagesName.category1,
    ),
    CategoryItem(
      id: "1",
      title: "pizza",
      image: ImagesName.category2,
    ),
    CategoryItem(
      id: "3",
      title: "pasta",
      image: ImagesName.category3,
    ),
    CategoryItem(id: "4", title: "Health ", image: ImagesName.category4),
    CategoryItem(id: "5", title: "Gift ", image: ImagesName.category5),
    CategoryItem(id: "6", title: "Stores", image: ImagesName.category6),
  ];

  // ===================== GETTERS ======================
  List<FoodItem> get getFoodList => foodList;

  List<CategoryItem> get getCategoryList => categoryList;

  List<FoodItem> get getFavoriteFood => favoriteFood;

  List<FoodItem> get getFilteredFood =>
      filteredFood.isNotEmpty ? filteredFood : foodList;

  // ===================== COUNTER ======================
  int counter = 1;

  void incrementCounter() {
    counter++;
    notifyListeners();
  }

  void decrementCounter() {
    counter > 1 ? counter-- : counter = 1;
    notifyListeners();
  }

  // ===================== FAVORITE ======================
  void toggleFavorite(FoodItem item) {
    final index = foodList.indexWhere((f) => f.id == item.id);

    if (index != -1) {
      final updatedItem = item.copyWith(isFavorite: !item.isFavorite);
      foodList[index] = updatedItem;

      if (updatedItem.isFavorite) {
        if (!favoriteFood.any((f) => f.id == updatedItem.id)) {
          favoriteFood.add(updatedItem);
        }
      } else {
        favoriteFood.removeWhere((f) => f.id == updatedItem.id);
      }
      toggleCategory();
      notifyListeners();
    }
  }

  // ===================== CATEGORY ======================
  String? selectedItem;

  void clickItem(String? click) {
    if(selectedItem == click){
      selectedItem = null;
    }else{
      selectedItem = click;
    }

    toggleCategory();
    notifyListeners();
  }

  void toggleCategory() {
    if (selectedItem == null) {
      filteredFood = foodList;
    } else {
      filteredFood = foodList
          .where((item) => item.categoryId == selectedItem)
          .toList();
    }
    notifyListeners();
  }
}
