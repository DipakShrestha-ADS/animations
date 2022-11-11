import 'package:animations/animation/custom_animated_widget_screen.dart';
import 'package:animations/animation/hero_animation_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomAnimationBuilderScreen extends StatefulWidget {
  const CustomAnimationBuilderScreen({Key? key}) : super(key: key);

  @override
  State<CustomAnimationBuilderScreen> createState() => _CustomAnimationBuilderScreenState();
}

class _CustomAnimationBuilderScreenState extends State<CustomAnimationBuilderScreen> with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<double> opacityAnimation;
  late Animation<double> sizeAnimation;
  late Animation<double> curveAnimation;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(
        seconds: 2,
      ),
    );
    opacityAnimation = Tween<double>(begin: 0.1, end: 1.0).animate(animationController);
    sizeAnimation = Tween<double>(begin: 100, end: 300).animate(animationController);
    curveAnimation = CurvedAnimation(
      parent: animationController,
      curve: Curves.easeInOutQuad,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AnimatedBuilder(
          animation: opacityAnimation,
          builder: (ctx, child) {
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
        CustomAnimatedWidgetScreen(animation: curveAnimation),
        const SizedBox(
          height: 40,
        ),
        Hero(
          tag: 'flutter_logo',
          child: OutlinedButton(
            onPressed: () {
              animationController.forward();
            },
            child: Text(
              'Forward Animation',
            ),
          ),
        ),
        OutlinedButton(
          onPressed: () {
            animationController.reverse();
          },
          child: Text(
            'Reverse Animation',
          ),
        ),
        OutlinedButton(
          onPressed: () {
            Navigator.push(
              context,
              CupertinoPageRoute(
                builder: (ctx) {
                  return HeroAnimationScreen();
                },
              ),
            );
          },
          child: Text(
            'Show Hero Animation',
          ),
        ),
      ],
    );
  }
}
