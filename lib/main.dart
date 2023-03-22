// ignore_for_file: prefer_const_constructors

import 'package:attadance_apps/app/modules/loading_screen/views/loading_view.dart';
import 'package:attadance_apps/app/modules/splash_screen/views/splash_view.dart';
import 'package:attadance_apps/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return LoadingView();
        } else {
          return GetMaterialApp(
            debugShowMaterialGrid: false,
            debugShowCheckedModeBanner: false,
            title: "Attadance_Application",
            initialRoute: AppPage.INITIAL,
            getPages: AppPage.routes,
          );
        }
      },
    );
  }
}
