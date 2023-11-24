import 'package:flutter/material.dart';

import '../models/category_model.dart';
import '../views/category_views.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    super.key,
    required this.categoryModel,
  });
  final CategoryModel categoryModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) {
            return CategoryView(
              category: categoryModel,
            );
          }),
        );
      },
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Container(
          height: 100,
          width: 150,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(
                categoryModel.image,
              ),
            ),
          ),
          child: Center(
            child: Text(
              categoryModel.categoryName,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
