import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../modules/loading_screen/views/loading_view.dart';
import '../modules/splash_screen/views/splash_view.dart';

part 'app_routes.dart';

class AppPage {
  AppPage._();

  static const INITIAL = Routes.LOADING;

  static final routes = [
    GetPage(name: _Paths.LOADING, page: () => LoadingView()),
    GetPage(name: _Paths.SPLASH, page: () => SplashView()),
  ];
}
