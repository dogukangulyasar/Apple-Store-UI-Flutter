import 'package:flutter/material.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Left Side of header
        // Contains logo & title
        Expanded(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 36),
                child: Image.asset("assets/images/apple_logo.png"),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 7, top: 3),
                child: Text(
                  "iStore",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
        // Right side of headers
        // Contains notification & avatar
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              GestureDetector(
                onTap: () => print("Open Notifications"),
                child: Padding(
                  padding: const EdgeInsets.only(right: 5),
                  child: Container(
                    width: 31,
                    height: 31,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    child: const Icon(Icons.notifications_none_outlined),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () => print("Open profile page"),
                child: Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 15.5,
                    child: Padding(
                      padding: const EdgeInsets.all(2),
                      child: Image.asset(
                        "assets/images/avatar.png",
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
