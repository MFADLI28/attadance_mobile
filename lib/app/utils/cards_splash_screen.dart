import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class CardSplash extends StatelessWidget {
  const CardSplash({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: PageView(
        children: [
          Container(
            child: Stack(
              children: [
                SvgPicture.asset(
                  "assets/icons/Splash Screen.svg",
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ),
          Container(
            child: Stack(
              children: [
                SvgPicture.asset(
                  "assets/icons/Splash Screen.svg",
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ),
          Container(
            child: Stack(
              children: [
                SvgPicture.asset(
                  "assets/icons/Splash Screen.svg",
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}