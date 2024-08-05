import 'package:e_commerce_mart/CONFIGS/theme.dart';
import 'package:e_commerce_mart/VIEWS/authview.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: lighttheme,
        debugShowCheckedModeBanner: false,
        title: 'COMMERCE MART',
        home: const Authview());
  }
}
