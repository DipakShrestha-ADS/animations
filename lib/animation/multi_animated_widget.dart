import 'package:flutter/material.dart';

class MultiAnimatedWidget extends AnimatedWidget {
  const MultiAnimatedWidget({Key? key, required Animation<double> animation}) : super(key: key, listenable: animation);

  static final sizeTween = Tween<double>(begin: 100, end: 400);
  static final opacityTween = Tween<double>(begin: 0.1, end: 1);
  @override
  Widget build(BuildContext context) {
    final animation = listenable as Animation<double>;
    return Opacity(
      opacity: opacityTween.evaluate(animation),
      child: Container(
        height: sizeTween.evaluate(animation),
        width: sizeTween.evaluate(animation),
        child: FlutterLogo(),
      ),
    );
  }
}
