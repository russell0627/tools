import '../data/months.dart';

class Month {
  final String name;
  final int numberOfDays;

  const Month(this.name, this.numberOfDays);

  @override
  String toString() {
    return "$name has $numberOfDays days.";
  }
}

Month findMonth(int number) {
  if (number <= 12) {
    return months[number]!;
  }
  else {
    return months[1]!;
  }
}