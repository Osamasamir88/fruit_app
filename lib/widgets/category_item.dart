import 'package:flutter/material.dart';
import 'package:fruit/models/category_model.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({super.key, required this.categoryModel});
  final CategoryModel categoryModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: SizedBox(
        width: 70,
        height: 100,
        child: Column(
          children: [
            Image.asset(categoryModel.image, width: 70, height: 70),
            Text(
              categoryModel.categoryName,
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ),
    );
  }
}
