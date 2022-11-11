import 'package:animations/reactive_programming/reactive_programming_screen.dart';
import 'package:flutter/material.dart';

void main() {
  /*//single subs stream
  final streamController = StreamController();
  final streamSubscription = streamController.stream.listen((event) {
    print("stream data: $event");
  });
  streamController.sink.add("hello world");
  streamController.sink.add(20);
  streamController.sink.add(false);
  streamController.close();

  //broadcast stream
  final broadcastStreamController = StreamController<double>.broadcast();
  final bSub = broadcastStreamController.stream.listen((event) {
    print("broadcast output: $event");
  });
  broadcastStreamController.sink.add(10);
  broadcastStreamController.sink.add(30.4);
  broadcastStreamController.sink.add(1);
  broadcastStreamController.close();

  // RxDart
  //Behavior Subject

  BehaviorSubject bs = BehaviorSubject<int>();
  bs.stream.listen((event) {
    print("Listen 1:$event");
  });
  bs.add(1);
  bs.add(2);
  bs.add(3);
  bs.close();

  bs.stream.listen((event) {
    print("Listen 2: $event");
  });
  bs.add(1);
  bs.add(2);
  bs.add(3);
  bs.close();

  // PublishSubject ps
  PublishSubject ps = PublishSubject();
  ps.stream.listen((event) {
    print("Listen 1: $event");
  });
  ps.add("Shady");
  ps.add("hello world");
  ps.add(3);
  ps.add(false);
  ps.close();
  PublishSubject pss = PublishSubject();
  ps.stream.listen((event) {
    print("Listen 2: $event");
  });
  pss.add("afghan");
  pss.add("dart");
  pss.add(69);
  pss.add(true);
  pss.close();

  //Replay Subject
  ReplaySubject rs = ReplaySubject();
  rs.stream.listen((event) {
    print("Listern 1 replay: $event");
  });
  rs.add("qwerty");
  rs.add(1);
  rs.add(2);
  rs.close();
  ReplaySubject rss = ReplaySubject<int>();
  rss.stream.listen((event) {
    print("Rs listern 1: $event");
  });
  rss.add(1);
  rss.add(2);
  rss.add(3);
  rss.close();*/
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ReactiveProgrammingScreen(),
    );
  }
}
