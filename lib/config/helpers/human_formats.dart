import 'package:intl/intl.dart';

class HumanFormats {
  static String humanReadableNumber(int number) {
    return NumberFormat.compactCurrency(
      decimalDigits: 0,
      symbol: '',
    ).format(number);
  }
}
