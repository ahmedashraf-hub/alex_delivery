import 'package:alex_delivery/models/categories_model.dart';
import 'package:alex_delivery/styles/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class IngredientsWidget extends StatelessWidget {
  final CategoriesModel ingredient;

  const IngredientsWidget({super.key, required this.ingredient});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Column(
        children: [
          Center(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
              ),
              child: SvgPicture.asset(
                ingredient.categoryImage,
                width: 50,
                height: 60,
              ),
            ),
          ),
          const SizedBox(height: 4),
          Text(
            ingredient.categoryName,
            style: AppTextStyles.regular12,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
