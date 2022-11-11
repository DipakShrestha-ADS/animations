import 'package:flutter/material.dart';

import 'animation/custom_animation_builder_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Animations'),
        ),
        body: CustomAnimationBuilderScreen(),
      ),
    );
  }
}
