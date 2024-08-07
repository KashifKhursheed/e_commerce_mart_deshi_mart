import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobilescreen;
  final Widget desktopscreen;
  final Widget tabscreen;

  const ResponsiveLayout({
    super.key,
    required this.mobilescreen,
    required this.desktopscreen,
    required this.tabscreen
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 600) {
          return mobilescreen;
        } else if (constraints.maxWidth <= 1000) {
          return tabscreen;
        } else {
          return desktopscreen;
        }
      },
    );
  }
}
