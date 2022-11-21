import 'package:flutter/material.dart';

class Counter {
  increment(int value) {
    debugPrint((value++).toString());

    return value++;
  }

  decrement(int value) {
    debugPrint((value--).toString());
    if (value <= 0) {
      return 0;
    } else {
      return value--;
    }
  }
}
