import 'dart:async';

import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:attadance_apps/app/modules/splash_screen/views/splash_view.dart';
import 'package:attadance_apps/app/utils/mytheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:page_transition/page_transition.dart';

class LoadingView extends StatefulWidget {
  const LoadingView({super.key});

  @override
  State<LoadingView> createState() => _LoadingViewState();
}

class _LoadingViewState extends State<LoadingView>
    with SingleTickerProviderStateMixin {
  // late AnimationController _animationController;
  // late Animation<double> _animation;

  @override
  void initState() {
    // _animationController = AnimationController(
    //     vsync: this, duration: const Duration(milliseconds: 1500));
    // _animation = CurvedAnimation(
    //   parent: _animationController,
    //   curve: Curves.decelerate,
    //   reverseCurve: Curves.decelerate,
    // );
    // _animationController.forward();

    Timer(
      Duration(milliseconds: 3000),
      () => Navigator.pushReplacement(
        context,
        PageTransition(
            child: SplashView(), type: PageTransitionType.bottomToTop),
      ),
    );
    super.initState();
  }

  @override
  void dispose() {
    // _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.transparent),
    );
    return Scaffold(
      backgroundColor: Mytheme.primary,
      body: Container(
        child: Center(
          child: SvgPicture.asset(
            "assets/icons/Logos.svg",
            height: 150,
          ),
        ),
      ),
    );
  }
}
