import 'package:intl/intl.dart';

class YukymController {
  // DateTime.parse(_userData.value!.selectDate)
  // FIXED: nowDate 포맷 수정 (mm -> MM)
  String nowDate = DateFormat('yyyy-MM-dd').format(DateTime.now());

  late String nowTime;

  // TODO: 조건 간소화 필요 (함수 및 람다식 사용 가능)
  // 1. 자시의 국 : 갑자1국 = getTyOne()의 값
  String getTyA() {
    // FIXED: 불필요한 List timeDataOne 제거



    // FIXED: 불필요한 조건문 제거
    final month = nowDate.substring(5, 7);

    if (month == '01' || month == '02') {
      return '경오1국';
    } else if (month == '03' || month == '04') {
      return '경오2국';
    } else if (month == '05' || month == '06') {
      return '경오3국';
    } else if (month == '07' || month == '08') {
      return '경오4국';
    } else if (month == '09' || month == '10') {
      return '경오5국';
    } else if (month == '11' || month == '12') {
      return '경오6국';
    }
    return '경오7국';
  }

  String getTyB() {
    // FIXED: 불필요한 List timeDataOne 제거

    // FIXME: 어차피 조건문에서 return하므로 필요없는 변수 취급
    String result = "";
    YukymTimeModel model = YukymTimeModel();
    // TODO: 조건 간소화 필요 (함수 및 for~in람다식 사용 가능)
    final nowTime = DateTime.now();
    // FIXED: or문 조건을 and로 변경
    // NOTE: 조건문 중 빠진 hour 범위 누락 추가
    if (nowTime.hour >= 0 &&  nowTime.hour < 2) {

      return YukymTimeModel.ty1;
    } else if (nowTime.hour >= 2 && nowTime.hour < 4) {
      // FIXED: hour 2~3 조건문 누락 추가
      return YukymTimeModel.ty2;
    } else if (nowTime.hour >= 4 && nowTime.hour < 6) {
      return YukymTimeModel.ty3;
    } else if (nowTime.hour >= 6 && nowTime.hour < 8) {
      return YukymTimeModel.ty4;
    } else if (nowTime.hour >= 8 && nowTime.hour < 10) {
      return YukymTimeModel.ty5;
    } else if (nowTime.hour >= 10 && nowTime.hour < 12) {
      return YukymTimeModel.ty6;
    } else if (nowTime.hour >= 12 && nowTime.hour < 14) {
      return YukymTimeModel.ty7;
    } else if (nowTime.hour >= 14 && nowTime.hour < 16) {
      // FIXED: hour 14~16 조건문 누락 추가
      return YukymTimeModel.ty8;
    } else if (nowTime.hour >= 16 && nowTime.hour < 18) {
      return YukymTimeModel.ty9;
    } else if (nowTime.hour >= 18 && nowTime.hour < 20) {
      return YukymTimeModel.ty10;
    } else if (nowTime.hour >= 20 && nowTime.hour < 22) {
      return YukymTimeModel.ty11;
    } else if (nowTime.hour >= 22 && nowTime.hour < 24) {
      return YukymTimeModel.ty12;
    }
    return result;
    //FIXME: 각 조건문에서 return하므로 결론적으로 이부분까지 도달하지 않을 가능성이 매우 높음
  }

  // FIXED: 의미없는 함수 (같은 값 반복)
  /*
   List<YukymTimeModel> _getTimeDataOne() {
    List<YukymTimeModel> timeDataOne = [];
    for (int i = 0; i < 24; i++) {
      timeDataOne.add(YukymTimeModel());
    }
    return timeDataOne;
  }
   */

}

class YukymTimeModel {
  // FIXED:
  // TODO: String + i 조합 생성으로 변경 필요
  static const String ty1 = '갑자1국';
  static const String ty2 = '갑자2국';
  static const String ty3 = '갑자3국';
  static const String ty4 = '갑자4국';
  static const String ty5 = '갑자5국';
  static const String ty6 = '갑자6국';
  static const String ty7 = '갑자7국';
  static const String ty8 = '갑자8국';
  static const String ty9 = '갑자9국';
  static const String ty10 = '갑자10국';
  static const String ty11 = '갑자11국';
  static const String ty12 = '갑자12국';
}
