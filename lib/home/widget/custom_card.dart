//TODO: Flutter
import 'package:flutter/material.dart';


class CustomCard extends StatelessWidget {
  final String name ;
  final String about;
  const CustomCard({super.key, required this.name,required this.about});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 100,
      decoration: BoxDecoration(
        color: Colors.deepOrange.withOpacity(0.17),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            name,
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            about,
            style: const TextStyle(
              fontSize: 16,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
