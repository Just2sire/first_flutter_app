import 'package:flutter/material.dart';
import 'package:flutter_empty/models/category_model.dart';
import 'package:flutter_empty/models/diet_model.dart';
import 'package:flutter_empty/models/popular_model.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<CategoryModel> categories = [];
  List<DietModel> diets = [];
  List<PopularDietsModel> popularDiets = [];

  void _getCategories() {
    categories = CategoryModel.getCategories();
  }

  void _getDiets() {
    diets = DietModel.getDiets();
  }

  void _getPopularDiets() {
    popularDiets = PopularDietsModel.getPopularDiets();
  }

  @override
  Widget build(BuildContext context) {
    _getCategories();
    _getDiets();
    _getPopularDiets();

    return Scaffold(
      appBar: AppBar(
        title: const Text("BreakFast"),
        centerTitle: true,
        backgroundColor: Colors.white,
        titleTextStyle: const TextStyle(
            color: Colors.black, fontSize: 28, fontWeight: FontWeight.bold),
        elevation: 0.0,
        leading: Container(
          margin: const EdgeInsets.all(10),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: const Color(0xffF7F8F8),
            borderRadius: BorderRadius.circular(10),
          ),
          child: SvgPicture.asset(
            'assets/icons/back_arrow_icon.svg',
            height: 20,
            width: 20,
          ),
        ),
        actions: [
          Container(
            margin: const EdgeInsets.all(10),
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: const Color(0xffF7F8F8),
                borderRadius: BorderRadius.circular(10)),
            child: SvgPicture.asset(
              "assets/icons/more_dots_icon.svg",
              width: 20,
              height: 20,
            ),
          )
        ],
      ),
      backgroundColor: Colors.white,
      body: ListView(
        // crossAxisAlignment: CrossAxisAlignment.start,
        scrollDirection: Axis.vertical,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 40, left: 25, right: 25),
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                  color: const Color(0xff1D1617).withOpacity(0.11),
                  blurRadius: 40,
                  spreadRadius: 0.0
                  // spreadRadius:
                  )
            ]),
            child: TextField(
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    contentPadding: const EdgeInsets.all(15),
                    hintText: "Search Pancake",
                    hintStyle:
                        const TextStyle(color: Color(0xffDDDADA), fontSize: 14),
                    border: const OutlineInputBorder(
                      // borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide.none,
                    ),
                    prefixIcon: Padding(
                      padding: const EdgeInsets.all(12),
                      child: SvgPicture.asset(
                        'assets/icons/search_icon.svg',
                        width: 10,
                        height: 10,
                      ),
                    ),
                    suffixIcon: Container(
                      width: 100,
                      child: IntrinsicHeight(
                          child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          const VerticalDivider(
                            color: Colors.black,
                            thickness: 0.1,
                            indent: 10,
                            endIndent: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(12),
                            child: SvgPicture.asset(
                              'assets/icons/fiter_element_icon.svg',
                              width: 20,
                              height: 20,
                            ),
                          )
                        ],
                      )),
                    ))),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 30, top: 20),
                child: Text(
                  'Category',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                height: 120,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  itemCount: categories.length,
                  itemBuilder: (context, index) {
                    return Container(
                      width: 100,
                      decoration: BoxDecoration(
                          color: categories[index].boxColor.withOpacity(0.3),
                          borderRadius: BorderRadius.circular(16)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            width: 50,
                            height: 50,
                            decoration: const BoxDecoration(
                                color: Colors.white, shape: BoxShape.circle),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child:
                                  SvgPicture.asset(categories[index].iconPath),
                            ),
                          ),
                          Text(categories[index].name,
                              style: const TextStyle(
                                  fontWeight: FontWeight.w400, fontSize: 15))
                        ],
                      ),
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) =>
                      const SizedBox(
                    width: 15,
                  ),
                ),
              )
            ],
          ),
          const SizedBox(height: 70),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 30),
                child: Text(
                  "Recommendation\nfor Diet",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    // color: Colors.red
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                  height: 240,
                  child: ListView.separated(
                    itemBuilder: (context, index) {
                      return Container(
                        width: 150,
                        decoration: BoxDecoration(
                          color: diets[index].boxColor.withOpacity(0.3),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          // crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 100,
                              height: 100,
                              // decoration: const BoxDecoration(
                              //     color: Colors.white, shape: BoxShape.circle),
                              child: SvgPicture.asset(diets[index].iconPath),
                            ),
                            Text(
                              diets[index].name,
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: Colors.black),
                            ),
                            Text(
                              "${diets[index].level} | ${diets[index].calorie} | ${diets[index].duration}",
                              style: const TextStyle(
                                  fontSize: 10, color: Colors.black54),
                            ),
                            Container(
                              alignment: Alignment.center,
                              height: 45,
                              width: 120,
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(colors: [
                                    diets[index].viewIsSelected
                                        ? const Color(0xff9DCEFF)
                                        : Colors.transparent,
                                    diets[index].viewIsSelected
                                        ? const Color(0xff92A3FD)
                                        : Colors.transparent
                                  ]),
                                  borderRadius: BorderRadius.circular(50)),
                              child: Text(
                                "View",
                                style: TextStyle(
                                    color: diets[index].viewIsSelected
                                        ? Colors.white
                                        : const Color(0xffC588F2)),
                              ),
                            )
                          ],
                        ),
                      );
                    },
                    itemCount: diets.length,
                    separatorBuilder: (BuildContext context, int index) =>
                        const SizedBox(
                      width: 25,
                    ),
                    scrollDirection: Axis.horizontal,
                    padding: const EdgeInsets.only(
                      left: 20,
                      right: 20,
                    ),
                  ))
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 50),
                child: Text(
                  "Popular",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    // color: Colors.red
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              ListView.separated(
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) {
                  return Container(
                    // color: Colors.blue,
                    height: 115,
                    decoration: BoxDecoration(
                        color: popularDiets[index].boxIsSelected
                            ? Colors.white
                            : const Color(0xff1D1617).withOpacity(0.07),
                        borderRadius: BorderRadius.circular(16),
                        boxShadow: popularDiets[index].boxIsSelected
                            ? [
                                BoxShadow(
                                    color: const Color(0xff1D1617)
                                        .withOpacity(0.07),
                                    offset: const Offset(0, 10),
                                    blurRadius: 40,
                                    spreadRadius: 0),
                              ]
                            : []),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                            // color: Colors.amber,
                            alignment: Alignment.center,
                            padding: const EdgeInsets.only(left: 20),
                            width: 75,
                            child:
                                SvgPicture.asset(popularDiets[index].iconPath)),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding:
                                  const EdgeInsets.only(left: 30, bottom: 10),
                              // color: Colors.black,
                              child: Text(
                                popularDiets[index].name,
                                style: const TextStyle(
                                    fontWeight: FontWeight.w600, fontSize: 20),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 30),
                              child: Text(
                                "${popularDiets[index].level} | ${popularDiets[index].calorie} | ${popularDiets[index].duration}",
                                style: const TextStyle(
                                    fontSize: 13, color: Colors.grey),
                              ),
                            )
                          ],
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            width: 25,
                            padding: const EdgeInsets.all(6),
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.black),
                                shape: BoxShape.circle),
                            child: SvgPicture.asset(
                                "assets/icons/next_icon_no_circle.svg"),
                          ),
                        )
                      ],
                    ),
                  );
                },
                padding: const EdgeInsets.only(left: 20, right: 20),
                separatorBuilder: (context, index) => const SizedBox(
                  height: 20,
                ),
                itemCount: popularDiets.length,
              ),
              const SizedBox(
                height: 50,
              )
            ],
          )
        ],
      ),
    );
  }
}
