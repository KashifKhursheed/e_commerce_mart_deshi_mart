import 'package:e_commerce_mart/CONFIGS/RESPONSIVE/responsive_layout.dart';
import 'package:e_commerce_mart/PAGES/DESKTOP/auth/auth.dart';
import 'package:e_commerce_mart/PAGES/MOBILE/auth/auth.dart';
import 'package:e_commerce_mart/PAGES/TABLET/auth/auth.dart';
import 'package:flutter/material.dart';

class Authview extends StatelessWidget {
  const Authview({super.key});

  @override
  Widget build(BuildContext context) {
    return const ResponsiveLayout(
      mobilescreen: AuthPageMobile(),
      desktopscreen: AuthPagedesktop(),
      tabscreen: AuthPagetablet()
    );
  }
}