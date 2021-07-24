import 'package:flutter/material.dart';
import 'package:live_in/main.dart';
import 'package:live_in/screens/home/page_result.dart';

import '../../../constants.dart';

// We need satefull widget for our categories

class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<String> categories = [
    "All",
    "Seminar",
    "Health",
    "Education",
    "Game",
    "Other"
  ];
  // By default our first item will be selected
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: SizedBox(
        height: 100,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) => buildCategory(index),
        ),
      ),
    );
  }

  Widget buildCategory(int index) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.0),
      child: GestureDetector(
        onTap: () {
          if (categories[index] == "All") {
            setState(() {});
          } else {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return PageResult(
                result: categories[index],
              );
            }));
          }
        },
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16.0),
          child: Container(
            color: Colors.orange[50],
            width: 80,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 34.0),
                child: Column(
                  children: [
                    // Icon(
                    //   Icons.ac_unit,
                    //   color: selectedIndex == index
                    //       ? Colors.orange
                    //       : Colors.black54,
                    // ),
                    Text(
                      categories[index],
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: selectedIndex == index
                            ? Colors.orange
                            : Colors.black54,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
