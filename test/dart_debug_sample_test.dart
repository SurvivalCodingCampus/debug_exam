import 'package:dart_debug_sample/dart_debug_fix.dart';
import 'package:dart_debug_sample/dart_debug_sample.dart';
import 'package:test/test.dart';

void main() {
  
  
  group('두 함수의 반환값이 동일한지 검증', ()
  {
    test('두 A함수의 반환값이 동일한지 검증', () {
      YukymController yukymController = YukymController();
      expect(YukymFixedController.getTyA(), equals(yukymController.getTyA()));
    });

    test('두 B함수의 반환값이 동일한지 검증', () {
      YukymController yukymController = YukymController();
      expect(YukymFixedController.getTyB(), equals(yukymController.getTyB()));
    });
  });
}
