import 'package:dart_debug_sample/dart_debug_sample.dart';

void main() {
  YukymController yukymController = YukymController();

  // 현재 날짜
  print(yukymController.nowDate);

  // 현재 날짜에 대한 경오 출력
  print(yukymController.getTyA());

  // 현재 시간에 대한 갑자 출력
  print(yukymController.getTyB());
}
