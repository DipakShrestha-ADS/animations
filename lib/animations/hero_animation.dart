import 'package:flutter/material.dart';

class HeroAnimation extends StatelessWidget {
  const HeroAnimation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hero Animations"),
      ),
      body: Center(
        child: Hero(
          tag: "flutter_logo",
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
