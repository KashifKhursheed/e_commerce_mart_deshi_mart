import 'dart:io';
import 'package:flutter/foundation.dart' as foundation;
import 'package:e_commerce_mart/CONFIGS/theme.dart';
import 'package:e_commerce_mart/VIEWS/homepageview.dart';
import 'package:flutter/material.dart';
import 'package:bitsdojo_window/bitsdojo_window.dart';

void main() {
  if (foundation.kIsWeb) {
    runApp(const MyApp());
  } else if (Platform.isWindows) {
  
    runApp(const MyApp());

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
    return MaterialApp(
        theme: lighttheme,
        debugShowCheckedModeBanner: false,
        title: 'COMMERCE MART',
        home: const Homepageview());
  }
}
