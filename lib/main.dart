import 'package:animations/animations/custom_animation_builder_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black38,
            elevation: 0,
            title: const Text("Animations"),
          ),
          body: CustomAnimationBuilderScreen()),
    );
  }
}
