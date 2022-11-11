import 'package:animations/animation/multi_animated_widget.dart';
import 'package:flutter/material.dart';

class AnimationScreen extends StatefulWidget {
  const AnimationScreen({Key? key}) : super(key: key);

  @override
  State<AnimationScreen> createState() => _AnimationScreenState();
}

class _AnimationScreenState extends State<AnimationScreen> with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<double> animation;
  late Animation<double> multiAnimation;
  late AnimationController multiAnimationController;

  @override
  void initState() {
    super.initState();
    /* animationController = AnimationController(
      vsync: this,
      duration: const Duration(
        seconds: 2,
      ),
      reverseDuration: const Duration(
        seconds: 2,
      ),
    );*/
    /*animation = Tween<double>(begin: 100, end: 400).animate(animationController)
      ..addStatusListener((animationStatus) {
        if (animationStatus == AnimationStatus.completed) {
          animationController.reverse();
        } else if (animationStatus == AnimationStatus.dismissed) {
          animationController.forward();
        }
      })
      ..addListener(() {
        context.read<AnimationCubit>().animate(animation);
      });*/
    // animation = Tween<double>(begin: 100, end: 400).animate(animationController);
    // animationController.forward();

    multiAnimationController = AnimationController(
      vsync: this,
      duration: const Duration(
        seconds: 2,
      ),
      reverseDuration: const Duration(
        seconds: 2,
      ),
    );
    multiAnimation = CurvedAnimation(parent: multiAnimationController, curve: Curves.easeInCubic)
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          multiAnimationController.reverse();
        } else if (status == AnimationStatus.dismissed) {
          multiAnimationController.forward();
        }
      });
    // multiAnimationController.forward();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // AnimatedCustomWidget(animation: animation),
        MultiAnimatedWidget(animation: multiAnimation),
        const SizedBox(
          height: 40,
        ),
        OutlinedButton(
          onPressed: () {
            animationController.forward();
          },
          child: Text(
            'Forward Animation',
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
      ],
    );
  }
}
