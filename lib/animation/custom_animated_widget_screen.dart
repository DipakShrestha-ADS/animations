import 'package:flutter/material.dart';

class CustomAnimatedWidgetScreen extends AnimatedWidget {
  const CustomAnimatedWidgetScreen({
    Key? key,
    required Animation<double> animation,
  }) : super(
          key: key,
          listenable: animation,
        );
  static final _opacityTween = Tween<double>(begin: 0.2, end: 1.0);
  static final _sizeTween = Tween<double>(begin: 50, end: 300);
  @override
  Widget build(BuildContext context) {
    final animation = listenable as Animation<double>;
    return Opacity(
      opacity: _opacityTween.evaluate(animation),
      child: Container(
        height: _sizeTween.evaluate(animation),
        width: _sizeTween.evaluate(animation),
        child: FlutterLogo(),
      ),
    );
  }
}
