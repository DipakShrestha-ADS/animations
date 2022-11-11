import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';

class ReactiveProgrammingScreen extends StatelessWidget {
  ReactiveProgrammingScreen({super.key});
  final textController = TextEditingController();

  BehaviorSubject bs = BehaviorSubject();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: const Text("Reactive Programming"),
      ),
      body: GestureDetector(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 150),
            child: Column(
              children: [
                StreamBuilder(
                    stream: bs.stream,
                    builder: (context, snapshot) {
                      return Text(
                        "${snapshot.data}",
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      );
                    }),
                SizedBox(
                  height: 40,
                ),
                TextField(
                  controller: textController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter text here...',
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          final inputText = textController.text;
          bs.add(inputText);
        },
        label: const Text("Add"),
      ),
    );
  }
}
