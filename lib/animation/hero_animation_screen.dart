import 'package:flutter/material.dart';

class HeroAnimationScreen extends StatelessWidget {
  const HeroAnimationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hero Animation'),
      ),
      body: Center(
        child: Hero(
          tag: 'flutter_logo',
          child: SizedBox(
            height: 200,
            width: 200,
            child: FlutterLogo(),
          ),
        ),
      ),
    );
  }
}
