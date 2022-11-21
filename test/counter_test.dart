import 'package:flutter_test/flutter_test.dart';
import 'package:test_demo/counter/counter.dart';

void main() {
  test("Counter increment", () {
    Counter counter = Counter();
    int expectedValue = counter.increment(0);

    expect(expectedValue, 1);
  });
  test("Counter decrement", () {
    Counter counter = Counter();
    int expectedValue = counter.decrement(1);

    expect(expectedValue, 0);
  });
}
