import 'package:dart_debug_sample/dart_debug_sample.dart';
import 'package:test/test.dart';

void main() {
  test('', () {
    final controller = YukymController();
    final value1 = controller.getTyA();
    final value2 = controller.getTyB();

    print(value1);
    print(value2);
  });
}
