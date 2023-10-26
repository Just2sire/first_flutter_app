import 'package:flutter/material.dart';

class CategoryModel {
  String name;
  String iconPath;
  Color boxColor;

  CategoryModel({
    required this.name,
    required this.iconPath,
    required this.boxColor,
  });

  static List<CategoryModel> getCategories() {
    List<CategoryModel> categories = [];

    categories.add(CategoryModel(
        name: "PanCake",
        iconPath: "assets/icons/pancake_icon1.svg",
        boxColor: Color(0xff92A3FD)));

    categories.add(CategoryModel(
        name: "Sanwich",
        iconPath: "assets/icons/pancake_icon2.svg",
        boxColor: Color(0xffC58BF2)));

    categories.add(CategoryModel(
        name: "PanCake",
        iconPath: "assets/icons/pancake_icon3.svg",
        boxColor: Color(0xff92A3FD)));

    categories.add(CategoryModel(
        name: "Pizza",
        iconPath: "assets/icons/pancake_icon4.svg",
        boxColor: Color(0xff92A3FD)));

    categories.add(CategoryModel(
        name: "Pizza",
        iconPath: "assets/icons/pancake_icon2.svg",
        boxColor: Color(0xffC58BF2)));

    categories.add(CategoryModel(
        name: "Sanwich",
        iconPath: "assets/icons/pancake_icon1.svg",
        boxColor: Color(0xffC58BF2)));

    categories.add(CategoryModel(
        name: "Burger",
        iconPath: "assets/icons/pancake_icon3.svg",
        boxColor: Color(0xff92A3FD)));

    categories.add(CategoryModel(
        name: "Tacos",
        iconPath: "assets/icons/pancake_icon4.svg",
        boxColor: Color(0xff92A3FD)));

    return categories;
  }
}
