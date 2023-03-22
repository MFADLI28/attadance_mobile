// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, unused_import

import 'package:attadance_apps/app/utils/cards_splash_screen.dart';
import 'package:attadance_apps/app/utils/mytheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: [
          Container(
            child: CardSplash(),
          ),
          Container(
            child: CardSplash(),
          ),
          Container(
            child: CardSplash(),
          ),
        ],
      ),
    );
  }
}
