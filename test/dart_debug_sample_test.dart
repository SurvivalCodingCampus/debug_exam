import 'package:dart_debug_sample/dart_debug_sample.dart';
import 'package:test/test.dart';



void main() {
  group('YukymController Tests', () {
    late YukymController controller;

    setUp(() {
      controller = YukymController();
    });

    test('현재 날짜가 올바르게 형식화 되는지 테스트', () {
      // 현재 날짜가 'yyyy-MM-dd' 형식으로 잘 반환되는지 체크
      String nowDate = controller.nowDate;
      expect(nowDate, matches(r'\d{4}-\d{2}-\d{2}')); // "2025-03-26" 형식이 맞는지 검사
    });

    test('getTyA() 테스트', () {
      // getTyA() 결과가 올바른지 테스트
      String result = controller.getTyA();
      expect(result, isNotEmpty); // 반환값이 비어있지 않은지 확인
    });

    test('getTyB() 시간에 따른 반환값 테스트', () {
      // 현재 시간을 기준으로 getTyB() 결과가 올바르게 반환되는지 테스트
      String result = controller.getTyB();
      expect(result, isNotEmpty); // 반환값이 비어있지 않은지 확인

      // 시간별로 타임데이터가 잘 반환되는지 테스트 (0시 ~ 2시 구간 예시)
      var now = DateTime.now();
      List<YukymTimeModel> timeDataOne = controller.getTimeDataOne(controller.nowDate);

      if (now.hour >= 0 && now.hour < 2) {
        expect(result, equals(timeDataOne.first.ty1));
      }
      // 시간대마다 예상하는 값이 잘 반환되는지 더 추가할 수 있음
    });

    test('예외 처리 테스트 (getTyB에서 예상치 못한 시간)', () {
      // 특정 시간대에 대한 예외를 테스트하려면,
      // 특정 시간을 설정하고 그에 맞는 반환값을 체크하는 방식으로 테스트 가능
      try {
        // 예외가 발생할 수 있는 코드 부분 (예시: getTyB()에서 예상 외의 값)
        String result = controller.getTyB();
        expect(result, isNotEmpty);
      } catch (e) {
        expect(e, isA<TypeError>());
      }
    });
  });
}