import 'package:flutter/material.dart';

import '../models/article_model.dart';
import '../models/category_model.dart';
import 'category_card.dart';

class CategoryListView extends StatelessWidget {
  const CategoryListView({
    super.key,
  });
  final List<CategoryModel> categories = const [
    CategoryModel(
      image: "assets/business2.jpg",
      categoryName: "Business",
    ),
    CategoryModel(
      image: "assets/entertaiment.avif",
      categoryName: "Entertainment",
    ),
    CategoryModel(
      image: "assets/health.avif",
      categoryName: "Health",
    ),
    CategoryModel(
      image: "assets/science2.jpg",
      categoryName: "Science",
    ),
    CategoryModel(
      image: "assets/technology.jpeg",
      categoryName: "Technology",
    ),
    CategoryModel(
      image: "assets/sports2.jpg",
      categoryName: "Sports",
    ),
    CategoryModel(
      image: "assets/general2.webp",
      categoryName: "General",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90,
      child: ListView.builder(
        itemCount: categories.length,
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return CategoryCard(
            categoryModel: categories[index],
          );
        },
      ),
    );
  }
}
