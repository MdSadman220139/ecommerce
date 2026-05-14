import 'package:ecommerce/app/app_colours.dart';
import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          margin: EdgeInsets.symmetric(horizontal: 8),
          color: AppColors.themeColor.withOpacity(0.15),
          elevation: 0,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Icon(Icons.computer, size: 48, color: AppColors.themeColor),
          ),
        ),
        Text(
          "Computers",
          style: TextStyle(
            color: AppColors.themeColor,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}