import 'package:e_commerce_mart/CONFIGS/RESPONSIVE/RESPONSIVELAYOUT.dart';
import 'package:e_commerce_mart/PAGES/DESKTOP/auth/auth.dart';
import 'package:e_commerce_mart/PAGES/MOBILE/auth/auth.dart';
import 'package:e_commerce_mart/PAGES/WEB/auth/auth.dart';
import 'package:flutter/material.dart';

class Authview extends StatelessWidget {
  const Authview({super.key});

  @override
  Widget build(BuildContext context) {
    return const ResponsiveLayout(
      mobile: AuthPageMobile(),
      desktop: AuthPagedesktop(),
      web: AuthPageweb()
    );
  }
}