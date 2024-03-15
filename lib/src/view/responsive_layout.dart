import 'package:flutter/material.dart';
import 'package:jiitak_test/src/view/tab/homePageTablet.dart';

class Responsive_Layout extends StatefulWidget {
  final Widget Mobile_View;
  final Widget Tab_View;
  const Responsive_Layout(
      {super.key, required this.Mobile_View, required this.Tab_View});

  @override
  State<Responsive_Layout> createState() => _Responsive_LayoutState();
}

class _Responsive_LayoutState extends State<Responsive_Layout> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 600) {
          return widget.Mobile_View;
        } else {
          return HomePageTablet();
        }
      },
    );
  }
}
