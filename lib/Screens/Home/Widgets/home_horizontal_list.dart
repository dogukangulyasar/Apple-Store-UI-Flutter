import 'package:apple_store_ui_flutter/Constants/colors.dart';
import 'package:apple_store_ui_flutter/Screens/Home/Widgets/home_list_item.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class HomeHorizontalList extends StatefulWidget {
  const HomeHorizontalList({super.key});

  @override
  State<HomeHorizontalList> createState() => _HomeHorizontalListState();
}

class _HomeHorizontalListState extends State<HomeHorizontalList> {
  int _selectedIndex = 0;
  List<Widget> _screens = [];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 10, right: 10),
      height: 88,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          GestureDetector(
            onTap: () {
              setState(() {
                _selectedIndex = 0;
              });
            },
            child: HomeListItem(
              selected: _selectedIndex == 0 ? true : false,
              imagePath: "assets/images/mac.png",
              name: "Mac",
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                _selectedIndex = 1;
              });
            },
            child: HomeListItem(
              selected: _selectedIndex == 1 ? true : false,
              imagePath: "assets/images/iphone.png",
              name: "iPhone",
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                _selectedIndex = 2;
              });
            },
            child: HomeListItem(
              selected: _selectedIndex == 2 ? true : false,
              imagePath: "assets/images/ipad.png",
              name: "iPad",
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                _selectedIndex = 3;
              });
            },
            child: HomeListItem(
              selected: _selectedIndex == 3 ? true : false,
              imagePath: "assets/images/watch.png",
              name: "Watch",
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                _selectedIndex = 4;
              });
            },
            child: HomeListItem(
              selected: _selectedIndex == 4 ? true : false,
              imagePath: "assets/images/watch.png",
              name: "Apple Tv",
            ),
          ),
        ],
      ),
    );
  }
}
