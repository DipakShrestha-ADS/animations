import 'package:animations/animations/animation_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'animations/animation_screen.dart';

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
        body: BlocProvider(
            create: (BuildContext context) {
              return AnimationCubit();
            },
            child: const AnimationScreen()),
      ),
    );
  }
}
