import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart' as foundation;
import 'package:e_commerce_mart/CONFIGS/theme.dart';
import 'package:e_commerce_mart/VIEWS/homepageview.dart';
import 'package:flutter/material.dart';
import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:flutter/widgets.dart';

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
    return MaterialApp(
        theme: lighttheme,
        debugShowCheckedModeBanner: false,
        title: 'COMMERCE MART',
        home: Column(
          children: [
            Container(
              color: Colors.amber,
              width: MediaQuery.of(context).size.width,
              height: 25,
              child: MoveWindow(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [closebtn()],
                ),
              ),
            ),
            Expanded(child: Homepageview())
          ],
        ));
  }
}

class closebtn extends StatelessWidget {
  const closebtn({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        exit(0);
      },
      icon: Icon(
        Icons.close,
        size: 15,
      ),
    );
  }
}
