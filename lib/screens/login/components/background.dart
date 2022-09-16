import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  const Background({
    Key? key,
    required this.size,
    required this.mainTop,
    required this.loginBottom,
    required this.child,
  }) : super(key: key);

  final Widget child;
  final Size size;
  final String mainTop;
  final String loginBottom;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: size.height,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(
            top: 0,
            left: 0,
            child: Image.asset(
              mainTop,
              width: size.width * 0.35,
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Image.asset(
              loginBottom,
              width: size.width * 0.4,
            ),
          ),
          child,
        ],
      ),
    );
  }
}
