import 'package:intl/intl.dart';

getToday() {
  DateTime now = DateTime.now();
  DateFormat formatter = DateFormat('yyyy년 MM월 dd일');
  var strToday = formatter.format(now);
  return strToday;
}
