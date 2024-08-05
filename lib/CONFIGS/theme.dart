import 'package:e_commerce_mart/CONFIGS/colors.dart';
import 'package:flutter/material.dart';

var lighttheme = ThemeData(
    brightness: Brightness.light,
    colorScheme: ColorScheme.light(
        surface: bgcolor,
        primary: primarycolor,
        onSurface: onbackgroundcolor,
        primaryContainer: primarycontainercolor,
        onPrimaryContainer: onprimarycontainercolor),
    textTheme: TextTheme(
      headlineMedium: TextStyle(
          fontFamily: 'poppins',
          fontSize: 25,
          fontWeight: FontWeight.w500,
          color: onbackgroundcolor),
      headlineSmall: TextStyle(
          fontFamily: 'poppins',
          fontSize: 20,
          fontWeight: FontWeight.w500,
          color: onbackgroundcolor),
      bodyMedium: TextStyle(
          fontFamily: 'poppins',
          fontSize: 15,
          fontWeight: FontWeight.w500,
          color: onbackgroundcolor),
      labelMedium: TextStyle(
          fontFamily: 'poppins',
          fontSize: 10,
          fontWeight: FontWeight.w400,
          color: onprimarycontainercolor),
    ));

var darktheme = ThemeData(
    brightness: Brightness.dark,
    colorScheme: const ColorScheme.dark(
        onSurface: darkonbackground,
        primary: darkprimarycolor,
        secondary: darksecondarycolor));
