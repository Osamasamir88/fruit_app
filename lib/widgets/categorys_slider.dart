import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:fruit/models/category_model.dart';
import 'package:fruit/widgets/category_item.dart';

class CategorysSlider extends StatelessWidget {
  CategorysSlider({super.key});
  List<CategoryModel> catigorys = [
    CategoryModel(
      image: 'assets/images/categorys/Frame 402.png',
      categoryName: 'Fruits',
    ),
    CategoryModel(
      image: 'assets/images/categorys/Frame 403.png',
      categoryName: 'Milk & egg',
    ),
    CategoryModel(
      image: 'assets/images/categorys/Frame 406.png',
      categoryName: 'Beverages',
    ),
    CategoryModel(
      image: 'assets/images/categorys/Frame 404.png',
      categoryName: 'Laundry',
    ),
    CategoryModel(
      image: 'assets/images/categorys/Frame 405.png',
      categoryName: 'Vegetables',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: catigorys.length,
      itemBuilder: (context, index, realIndex) => CategoryItem(categoryModel: catigorys[index]),
      options: CarouselOptions(
        height: 100,
        autoPlay: true,
        autoPlayInterval: Duration(milliseconds: 400),
        autoPlayAnimationDuration: Duration(milliseconds: 300),
        viewportFraction: 0.23,
        autoPlayCurve: Curves.ease,
      ),
    );
  }
}

