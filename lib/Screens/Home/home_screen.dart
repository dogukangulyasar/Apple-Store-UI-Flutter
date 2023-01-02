import 'package:apple_store_ui_flutter/Screens/Home/Widgets/home_banner.dart';
import 'package:apple_store_ui_flutter/Screens/Home/Widgets/home_header.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        HomeHeader(),
        HomeBanner(),
      ],
    );
  }
}
