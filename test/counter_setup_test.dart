import 'package:flutter_test/flutter_test.dart';
import 'package:test_demo/counter/counter.dart';

void main() {
  // tearDown(body)
  group("Counter", () {
    late Counter counter;
    setUp(() {
      counter = Counter();
    });
    test("Increment", () {
      int value = counter.increment(1);
      expect(value, 2);
    });
    test("Decrement", () {
      int value = counter.decrement(5);
      expect(value, 4);
    });
  });
}
