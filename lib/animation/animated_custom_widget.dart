import 'package:flutter/material.dart';

class AnimatedCustomWidget extends AnimatedWidget {
  const AnimatedCustomWidget({Key? key, required Animation<double> animation}) : super(key: key, listenable: animation);

  @override
  Widget build(BuildContext context) {
    final animation = listenable as Animation<double>;
    return Container(
      height: animation.value,
      width: animation.value,
      child: FlutterLogo(),
    );
  }
}
