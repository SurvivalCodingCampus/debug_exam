import 'package:dart_debug_sample/dart_debug_sample.dart';

void main() {
  YukymController yukymController = YukymController();
  print(yukymController.getTyA()); // 해당 월에 맞는 자시의 국 표시 경오3국
  print(yukymController.getTyB()); // 해당 시간에 맞는 자시의 국 표시 갑자7국
}
