import 'package:flutter/material.dart';

class CustomLayoutBuilder extends StatelessWidget {
  const CustomLayoutBuilder(
      {super.key,
      required this.mobileLayout,
      required this.tabletLayout,
      required this.desktopLayout});
  final Widget mobileLayout, tabletLayout, desktopLayout;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 900) {
          return desktopLayout;
        } else if (constraints.maxWidth < 600) {
          return mobileLayout;
        } else {
          return tabletLayout;
        }
      },
    );
  }
}
