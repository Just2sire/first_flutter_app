class PopularDietsModel {
  String name;
  String iconPath;
  String level;
  String duration;
  String calorie;
  bool boxIsSelected;

  PopularDietsModel({
      required this.name,
      required this.iconPath,
      required this.level,
      required this.duration,
      required this.calorie,
      required this.boxIsSelected,
      });

  static List<PopularDietsModel> getPopularDiets() {

    List<PopularDietsModel> popularDiets = [];

        popularDiets.add(PopularDietsModel(
        name: "Cake",
        iconPath: "assets/icons/pancake_icon1.svg",
        level: "Easy",
        duration: "20mins",
        calorie: "180kCal",
        boxIsSelected: true,
      )
    );

    popularDiets.add(PopularDietsModel(
        name: "Pizza",
        iconPath: "assets/icons/pancake_icon2.svg",
        level: "Difficult",
        duration: "45mins",
        calorie: "250kCal",
        boxIsSelected: false,
      )
    );

    popularDiets.add(PopularDietsModel(
        name: "Sandwich",
        iconPath: "assets/icons/pancake_icon3.svg",
        level: "Normal",
        duration: "30mins",
        calorie: "200kCal",
        boxIsSelected: false,
      )
    );

    popularDiets.add(PopularDietsModel(
        name: "Tacos",
        iconPath: "assets/icons/pancake_icon3.svg",
        level: "Normal",
        duration: "30mins",
        calorie: "200kCal",
        boxIsSelected: false,
      )
    );


    return popularDiets;
  }
}
