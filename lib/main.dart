import 'dart:io';

import 'package:e_commerce_mart/CONFIGS/assetspath.dart';
import 'package:e_commerce_mart/CONFIGS/colors.dart';
import 'package:e_commerce_mart/WIDGETS/FOR_WINDOWS_SPECIFIC/windowtitlebar.dart';

import 'package:flutter/foundation.dart' as foundation;
import 'package:e_commerce_mart/CONFIGS/theme.dart';
import 'package:e_commerce_mart/VIEWS/homepageview.dart';
import 'package:flutter/material.dart';
import 'package:bitsdojo_window/bitsdojo_window.dart';

import 'package:flutter_svg/flutter_svg.dart';

void main() {
  if (foundation.kIsWeb) {
    runApp(const MyApp());
  } else if (Platform.isWindows) {
    runApp(const MyDesktopApp());

    doWhenWindowReady(() {
      final win = appWindow;

      win.title = "Custom window with Flutter";
      win.maximize();
      win.show();
    });
  } else {
    runApp(const MyApp());
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: lighttheme,
        debugShowCheckedModeBanner: false,
        title: 'COMMERCE MART',
        home: const Homepageview());
  }
}

class MyDesktopApp extends StatelessWidget {
  const MyDesktopApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const Windowtitlebar();
  }
}
