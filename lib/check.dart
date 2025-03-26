import 'package:intl/intl.dart';

void main() {
  var now = DateTime.now();
  DateFormat inputFormat = DateFormat('yyyy-MM-dd');
  var nowDate = inputFormat.format(now);
  String month = nowDate.substring(5, 7);
  print(nowDate);
  print(month);
}
