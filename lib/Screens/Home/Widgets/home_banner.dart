import 'package:flutter/material.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () => print("Banner clicked"),
            child: Container(
              // TODO: Make responsive here. -> MediaQuery.of(context).width / height
              height: 200,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/banner_background.png"),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
