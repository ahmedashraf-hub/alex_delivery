import 'package:flutter/cupertino.dart';

class CategoriesModel {
  final String categoryImage;
  final String categoryName;
  final Color? categoryColor;

  CategoriesModel({
    required this.categoryImage,
    required this.categoryName,
    this.categoryColor,
  });
}
