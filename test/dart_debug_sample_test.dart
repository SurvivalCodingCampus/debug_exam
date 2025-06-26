import 'package:dart_debug_sample/dart_debug_sample.dart';
import 'package:test/test.dart';

void main() {

  YukymController yukymController01 = YukymController(nowDate: '2025-07-01', nowTime: 19);

  test('해당 월이 7월이면 getTyA() 값은 경오4국이다 ', () {
    final resultA = yukymController01.getTyA();
    expect(resultA, equals('경오4국'));
  });

  test('해당 시가 19시면 getTyB() 값은 값자 10국이다', () {
    final resultB = yukymController01.getTyB();
    expect(resultB, equals('갑자10국'));
  });
}
