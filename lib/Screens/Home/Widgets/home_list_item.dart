import 'package:apple_store_ui_flutter/Constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class HomeListItem extends StatelessWidget {
  final String imagePath;
  final bool selected;
  final String name;
  const HomeListItem(
      {super.key,
      required this.imagePath,
      required this.selected,
      required this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 10),
      width: 88,
      decoration: BoxDecoration(
        color: selected ? HexColor(homeDarkColor) : Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            imagePath,
            color: selected ? Colors.white : Colors.black,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Text(
              name,
              style: TextStyle(
                fontWeight: FontWeight.w600,
                color: selected ? Colors.white : Colors.black,
              ),
            ),
          )
        ],
      ),
    );
  }
}
