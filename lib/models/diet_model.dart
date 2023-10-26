import 'package:flutter/material.dart';

class DietModel {
  String name;
  String iconPath;
  String level;
  String duration;
  String calorie;
  bool viewIsSelected;
  Color boxColor;

  DietModel({
    required this.name,
    required this.iconPath,
    required this.level,
    required this.duration,
    required this.calorie,
    required this.viewIsSelected,
    required this.boxColor
  });

  static List<DietModel> getDiets() {
    List<DietModel> diets = [];

    diets.add(DietModel(
        name: "Cake",
        iconPath: "assets/icons/pancake_icon1.svg",
        level: "Easy",
        duration: "20mins",
        calorie: "180kCal",
        viewIsSelected: true,
        boxColor: Color(0xff92A3FD),
      )
    );

    diets.add(DietModel(
        name: "Pizza",
        iconPath: "assets/icons/pancake_icon2.svg",
        level: "Difficult",
        duration: "45mins",
        calorie: "250kCal",
        viewIsSelected: false,
        boxColor: Color(0xffC58BF2),
      )
    );

    diets.add(DietModel(
        name: "Sandwich",
        iconPath: "assets/icons/pancake_icon3.svg",
        level: "Normal",
        duration: "30mins",
        calorie: "200kCal",
        viewIsSelected: false,
        boxColor: Color(0xff92A3FD),
      )
    );

    diets.add(DietModel(
        name: "Tacos",
        iconPath: "assets/icons/pancake_icon3.svg",
        level: "Normal",
        duration: "30mins",
        calorie: "200kCal",
        viewIsSelected: false,
        boxColor: Color(0xffC58BF2),
      )
    );

    diets.add(DietModel(
        name: "Cake",
        iconPath: "assets/icons/pancake_icon1.svg",
        level: "Easy",
        duration: "20mins",
        calorie: "180kCal",
        viewIsSelected: true,
        boxColor: Color(0xff92A3FD),
      )
    );

    diets.add(DietModel(
        name: "Pizza",
        iconPath: "assets/icons/pancake_icon2.svg",
        level: "Difficult",
        duration: "45mins",
        calorie: "250kCal",
        viewIsSelected: false,
        boxColor: Color(0xffC58BF2),
      )
    );

    diets.add(DietModel(
        name: "Sandwich",
        iconPath: "assets/icons/pancake_icon3.svg",
        level: "Normal",
        duration: "30mins",
        calorie: "200kCal",
        viewIsSelected: false,
        boxColor: Color(0xffC58BF2),
      )
    );

    diets.add(DietModel(
        name: "Tacos",
        iconPath: "assets/icons/pancake_icon3.svg",
        level: "Normal",
        duration: "30mins",
        calorie: "200kCal",
        viewIsSelected: false,
        boxColor: Color(0xff92A3FD),
      )
    );

    return diets;
  }
}
