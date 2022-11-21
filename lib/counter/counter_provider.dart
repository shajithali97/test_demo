import 'package:flutter/cupertino.dart';
import 'package:test_demo/counter/counter.dart';

class CounterProvider extends ChangeNotifier {
  int value = 1;
  Counter counter = Counter();

  void increment() {
    value = counter.increment(value);
    notifyListeners();
  }

  void decrement() {
    value = counter.decrement(value);
    notifyListeners();
  }
}
