import 'package:animations/animations/custom_animated_widget_screen.dart';
import 'package:animations/animations/hero_animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomAnimationBuilderScreen extends StatefulWidget {
  const CustomAnimationBuilderScreen({Key? key}) : super(key: key);

  @override
  State<CustomAnimationBuilderScreen> createState() =>
      _CustomAnimationBuilderScreenState();
}

class _CustomAnimationBuilderScreenState
    extends State<CustomAnimationBuilderScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<double> opacityAnimation;
  late Animation<double> sizeAnimation;
  late Animation<double> curveAnimation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(
        seconds: 2,
      ),
    );
    opacityAnimation =
        Tween<double>(begin: 0.1, end: 1.0).animate(animationController);
    sizeAnimation =
        Tween<double>(begin: 50, end: 200).animate(animationController);
    curveAnimation =
        CurvedAnimation(parent: animationController, curve: Curves.slowMiddle);
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Column(
          children: [
            AnimatedBuilder(
              animation: opacityAnimation,
              builder: (context, child) {
                return Opacity(
                  opacity: opacityAnimation.value,
                  child: SizedBox(
                    height: sizeAnimation.value,
                    width: sizeAnimation.value,
                    child: FlutterLogo(),
                  ),
                );
              },
            ),
            Hero(
              tag: "flutter_logo",
              child: CustomAnimatedWidgetScreen(
                animation: curveAnimation,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            OutlinedButton(
              onPressed: () {
                animationController.forward();
              },
              child: const Text("Forward Animation"),
            ),
            const SizedBox(
              height: 30,
            ),
            OutlinedButton(
              onPressed: () {
                animationController.reverse();
              },
              child: const Text("Reverse Animation"),
            ),
            const SizedBox(
              height: 20,
            ),
            OutlinedButton(
              onPressed: () {
                Navigator.push(context, CupertinoPageRoute(builder: (context) {
                  return HeroAnimation();
                }));
              },
              child: const Text("Hero Animations"),
            ),
          ],
        ),
      ),
    );
  }
}
