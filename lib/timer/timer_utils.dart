class TimerUtils {
  String getTimeOfTheDayWithParam(DateTime time) {
    if (time.hour >= 1 && time.hour < 12) return "Morning";
    if (time.hour >= 12 && time.hour < 16) return "Afternoon";
    if (time.hour >= 16 && time.hour < 21) return "Evening";
    return "Night";
  }

  String getTimeOfTheDayWithoutParam() {
    DateTime time = DateTime.now();
    if (time.hour >= 1 && time.hour < 12) return "Morning";
    if (time.hour >= 12 && time.hour < 16) return "Afternoon";
    if (time.hour >= 16 && time.hour < 21) return "Evening";
    return "Night";
  }
}
