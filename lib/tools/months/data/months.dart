
import '../models/month.dart';

const Map<int, Month> months = {
  1: Month("January", 31),
  2: Month("February", 28),
  3: Month("March", 31),
  4: Month("April", 30),
  5: Month("May", 31),
  6: Month("June", 30),
  7: Month("July", 31),
  8: Month("August", 31),
  9: Month("September", 31),
  10: Month("October", 30),
  11: Month("November", 31),
  12: Month("December", 30),
};

late int monthNumber;
Month foundMonth = months[1]!;