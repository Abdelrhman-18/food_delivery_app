class FoodItem {
  final String name;
  final String price;
  final String imageUrl;
  final bool isFavorite;

  FoodItem({
    required this.name,
    required this.price,
    required this.imageUrl,
    this.isFavorite = false,
  });
  FoodItem copyWith({
    String? name,
    String? price,
    String? imageUrl,
    bool? isFavorite,
  }) {
    return FoodItem(
      name: name ?? this.name,
      price: price ?? this.price,
      imageUrl: imageUrl ?? this.imageUrl,
      isFavorite: isFavorite ?? this.isFavorite,
    );
  }
}

List<FoodItem> foodList = [
  FoodItem(
    name: "pizza",
    price: "150 EGP",
    imageUrl:
        "assets/images/pizza.jpg",
  ),FoodItem(
    name: "Burger",
    price: "120 EGP",
    imageUrl:
        "assets/images/burger.jpg",
  ),FoodItem(
    name: "pizza",
    price: "150 EGP",
    imageUrl:
        "assets/images/pizza.jpg",
  ),FoodItem(
    name: "Burger",
    price: "120 EGP",
    imageUrl:
        "assets/images/burger.jpg",
  ),FoodItem(
    name: "pizza",
    price: "150 EGP",
    imageUrl:
        "assets/images/pizza.jpg",
  ),FoodItem(
    name: "Burger",
    price: "120 EGP",
    imageUrl:
        "assets/images/burger.jpg",
  ),
  // FoodItem(
  //   name: "Pizza",
  //   price: "150 EGP",
  //   imageUrl:
  //       "https://images.pexels.com/photos/315755/pexels-photo-315755.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260",
  // ),
  // FoodItem(
  //   name: "Pasta",
  //   price: "100 EGP",
  //   imageUrl:
  //       "https://images.pexels.com/photos/1279330/pexels-photo-1279330.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260",
  // ),
  // FoodItem(
  //   name: "Fried Chicken",
  //   price: "130 EGP",
  //   imageUrl:
  //       "https://images.pexels.com/photos/5203696/pexels-photo-5203696.jpeg",
  // ),
  // FoodItem(
  //   name: "Sushi",
  //   price: "200 EGP",
  //   imageUrl:
  //       "https://images.pexels.com/photos/357756/pexels-photo-357756.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260",
  // ),
  // FoodItem(
  //   name: "Beef Burger ",
  //   price: "150 EGP",
  //   imageUrl:
  //       "https://images.pexels.com/photos/29481861/pexels-photo-29481861.jpeg",
  // ),
  // FoodItem(
  //   name: "Salad",
  //   price: "90 EGP",
  //   imageUrl:
  //       "https://images.pexels.com/photos/1640777/pexels-photo-1640777.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260",
  // ),
];
