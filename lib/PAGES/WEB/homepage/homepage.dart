import 'package:flutter/material.dart';

class Homepageweb extends StatelessWidget {
  const Homepageweb({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Row(
      children: [
        Expanded(
            child: Container(
          color: Colors.amber,
        )),
        Expanded(
            flex: 6,
            child: Container(
              color: Colors.black,
            ))
      ],
    )));
  }
}
