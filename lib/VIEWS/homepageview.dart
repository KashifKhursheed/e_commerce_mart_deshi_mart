import 'package:e_commerce_mart/CONFIGS/RESPONSIVE/responsive_layout.dart';
import 'package:e_commerce_mart/PAGES/DESKTOP/homepage/homepage.dart';
import 'package:e_commerce_mart/PAGES/MOBILE/homepage/homepage.dart';
import 'package:e_commerce_mart/PAGES/WEB/homepage/homepage.dart';
import 'package:flutter/material.dart';

class Homepageview extends StatelessWidget {
  const Homepageview({super.key});

  @override
  Widget build(BuildContext context) {
    return const ResponsiveLayout(
        mobile: Homepagemobile(),
        desktop: HomepageDesktop(),
        web: Homepageweb());
  }
}
