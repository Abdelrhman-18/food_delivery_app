//TODO: Flutter
import 'package:flutter/material.dart';
//TODO: Internal File

class IconBox extends StatelessWidget {
  final VoidCallback onTap;
  final IconData icon;
  final Color color;
  final Color backgroundColor;

  const IconBox({super.key, required this.onTap, required this.icon ,required this.color, required this.backgroundColor});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(12),
        ),
        child: IconButton(
          onPressed: onTap,
          icon: Icon(icon, color: color),
        ),
      ),
    );
  }
}
