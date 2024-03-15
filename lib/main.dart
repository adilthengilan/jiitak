import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jiitak_test/src/view/mobile/homepage_mobile.dart';
import 'package:jiitak_test/src/view/responsive_layout.dart';
import 'package:jiitak_test/src/view/tab/homePageTablet.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(canvasColor: Colors.transparent),
        home: Responsive_Layout(
            Mobile_View: HomePage(), Tab_View: HomePageTablet()));
  }
}
