import 'package:apple_store_ui_flutter/Constants/colors.dart';
import 'package:apple_store_ui_flutter/Screens/Home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

void main() {
  runApp(const MainScreen());
}

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: HexColor(homeBackgroundColor),
        body: const SafeArea(
          child: HomeScreen(),
        ),
      ),
    );
  }
}
