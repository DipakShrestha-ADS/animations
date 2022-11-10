import 'package:flutter/material.dart';

class AnimationScreen extends StatefulWidget {
  const AnimationScreen({Key? key}) : super(key: key);

  @override
  State<AnimationScreen> createState() => _AnimationScreenState();
}

class _AnimationScreenState extends State<AnimationScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<double> animation;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(
        seconds: 5,
      ),
      reverseDuration: const Duration(
        seconds: 5,
      ),
    );
    animation = Tween<double>(begin: 50, end: 500).animate(animationController)
      ..addStatusListener((animationStatus) {
        print("animation:${animation.value}");
        if (animationStatus == AnimationStatus.completed) {
          animationController.reverse();
        } else if (animationStatus == AnimationStatus.dismissed) {
          animationController.forward();
        }
      })
      ..addListener(() {
        // setState(() {});
      });

    animationController.forward();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          AnimatedBuilder(
            animation: animation,
            builder: (context, child) {
              return Container(
                height: animation.value,
                width: animation.value,
                color: Colors.indigo,
              );
            },
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
        ],
      ),
    );
  }
}
