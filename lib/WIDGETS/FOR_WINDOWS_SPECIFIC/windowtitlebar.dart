
import 'dart:io';

import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:e_commerce_mart/CONFIGS/assetspath.dart';
import 'package:e_commerce_mart/CONFIGS/colors.dart';
import 'package:e_commerce_mart/CONFIGS/theme.dart';
import 'package:e_commerce_mart/VIEWS/homepageview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Windowtitlebar extends StatelessWidget {
  const Windowtitlebar({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: lighttheme,
        debugShowCheckedModeBanner: false,
        title: 'COMMERCE MART',
        home: Column(
          children: [
            Container(
              color: onbackgroundcolor,
              width: MediaQuery.of(context).size.width,
              height: 30,
              child: MoveWindow(
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [Minimizebtn(), Maximizebtn(), Closebtn()],
                ),
              ),
            ),
            const Expanded(child: Homepageview())
          ],
        ));
  }
}

class Closebtn extends StatelessWidget {
  const Closebtn({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
        hoverColor: primarycolor,
        padding: const EdgeInsets.all(0),
        splashColor: Colors.transparent,
        tooltip: 'CLOSE',
        onPressed: () {
          exit(0);
        },
        icon: SvgPicture.asset(IconAssets.closebtn,
            colorFilter: const ColorFilter.mode(bgcolor, BlendMode.srcIn)));
  }
}

class Minimizebtn extends StatelessWidget {
  const Minimizebtn({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
        hoverColor: primarycolor,
        padding: const EdgeInsets.all(0),
        splashColor: Colors.transparent,
        tooltip: 'MINIMIZE',
        onPressed: () {
          appWindow.minimize();
        },
        icon: SvgPicture.asset(IconAssets.minimizebtn,
            colorFilter: const ColorFilter.mode(bgcolor, BlendMode.srcIn)));
  }
}

class Maximizebtn extends StatelessWidget {
  const Maximizebtn({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
        hoverColor: primarycolor,
        padding: const EdgeInsets.all(0),
        splashColor: Colors.transparent,
        tooltip: 'MAXIMIZE',
        onPressed: () {
          appWindow.maximizeOrRestore();
        },
        icon: SvgPicture.asset(IconAssets.maximizebtn,
            colorFilter: const ColorFilter.mode(bgcolor, BlendMode.srcIn)));
  }
}
