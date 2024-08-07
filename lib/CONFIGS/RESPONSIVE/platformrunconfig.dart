import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

class PlatformRunConfig extends StatelessWidget {
  final Widget isweb;
  final Widget isdesktop;
  final Widget ismobile;

  const PlatformRunConfig(
      {super.key,
      required this.isweb,
      required this.isdesktop,
      required this.ismobile});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (kIsWeb == true) {
          return isweb;
        } else if (Platform.isAndroid) {
          return ismobile;
        } else {
          return isdesktop;
        }
      },
    );
  }
}
