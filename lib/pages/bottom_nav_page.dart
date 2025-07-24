import 'package:flutter/material.dart';
import 'package:food_delivery_app/pages/favorite_page.dart';
import 'package:food_delivery_app/pages/home_page.dart';
import 'package:food_delivery_app/pages/person_page.dart';

class BottomNavPage extends StatefulWidget {
  const BottomNavPage({super.key});

  @override
  State<BottomNavPage> createState() => _BottomNavPageState();
}

class _BottomNavPageState extends State<BottomNavPage> {
  int selectTap = 0;

  void onTap(int newIndex) {
    setState(() {
      selectTap = newIndex;
    });
  }

  List pages = [HomePage(), FavoritePage(), PersonPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectTap,
        onTap: onTap,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: "favorite",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "person"),
        ],
      ),
      body: pages[selectTap],
    );
  }
}
