import 'package:flutter_test/flutter_test.dart';
import 'package:test_demo/counter/counter.dart';
import 'package:test_demo/timer/timer_utils.dart';

void main() {
  group("Timer", () {
    late TimerUtils timerUtils;
    setUp(() {
      timerUtils = TimerUtils();
    });
    test("Morning", () {
      // DateTime(int year, [int month = 1, int day = 1, int hour = 0, int minute = 0, int second = 0, int millisecond = 0, int microsecond = 0])
      DateTime time = DateTime(2022, 11, 22, 6, 7, 2);
      String expectedValue = timerUtils.getTimeOfTheDayWithParam(time);
      expect(expectedValue, "Morning");
    });
    test("Afternoon", () {
      // DateTime(int year, [int month = 1, int day = 1, int hour = 0, int minute = 0, int second = 0, int millisecond = 0, int microsecond = 0])
      DateTime time = DateTime(2022, 11, 22, 13, 7, 2);
      String expectedValue = timerUtils.getTimeOfTheDayWithParam(time);
      expect(expectedValue, "Afternoon");
    });
    test("Evening", () {
      // DateTime(int year, [int month = 1, int day = 1, int hour = 0, int minute = 0, int second = 0, int millisecond = 0, int microsecond = 0])
      DateTime time = DateTime(2022, 11, 22, 18, 7, 2);
      String expectedValue = timerUtils.getTimeOfTheDayWithParam(time);
      expect(expectedValue, "Evening");
    });
    test("Night", () {
      // DateTime(int year, [int month = 1, int day = 1, int hour = 0, int minute = 0, int second = 0, int millisecond = 0, int microsecond = 0])
      DateTime time = DateTime(2022, 11, 22, 22, 7, 2);
      String expectedValue = timerUtils.getTimeOfTheDayWithParam(time);
      expect(expectedValue, "Night");
    });
  });
}
