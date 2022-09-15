import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  Background({Key? key, required this.child}) : super(key: key);

  Widget child;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    String mainTop = 'assets/images/main_top.png';
    String mainBottom = 'assets/images/main_bottom.png';

    return Container(
      height: size.height,
      width: double.infinity,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(
            top: 0,
            left: 0,
            child: Image.asset(
              mainTop,
              width: size.width * 0.3,
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            child: Image.asset(
              mainBottom,
              width: size.width * 0.2,
            ),
          ),
          child,
        ],
      ),
    );
  }
}
