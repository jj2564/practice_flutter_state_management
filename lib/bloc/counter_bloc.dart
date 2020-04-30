import 'dart:async';

import 'package:bloc_pattern/bloc_pattern.dart';

class Counter extends BlocBase {
  int _counter = 0;

  StreamController<int> _counterController = StreamController<int>();
  get counterStream => _counterController.stream;
  int get counter => _counter;

  void incrementCounter() {

    _counter++;
    _counterController.add(_counter);
  }

  @override
  void dispose() {
    _counterController.close();
    super.dispose();
  }
}