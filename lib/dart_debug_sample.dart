import 'package:intl/intl.dart';

class YukymController {

  // DateTime.parse(_userData.value!.selectDate)
  // yyyy-mm-dd 에서 yyyy--MM-dd 로 변경
  // mm은 minite를 나타내고, MM이 Month를 나타낸다.
  String nowDate = DateFormat('yyyy-MM-dd').format(DateTime.now());

  late String nowTime;

  // 1. 자시의 국 : 갑자1국 = getTyOne()의 값
  String getTyA() {
    List<YukymTimeModel> timeDataOne = _getTimeDataOne();
  
    if (timeDataOne.isNotEmpty) {
      nowTime = timeDataOne.first.ty1;
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
      return nowTime;
    } else {
      // Handle the case when the list is empty
      return '경오7국';  // Or any other appropriate action
    }
  }

  String getTyB() {
    List<YukymTimeModel> timeDataOne =
    _getTimeDataOne();
    String result = timeDataOne.first.ty12;

    final nowTime = DateTime.now();
    // || 가 아니라 &&로 수정
    // => || 를 사용하면 0~2시가 아니라 0시보다 크기만 하면 return이 되므로 안됨
    //  => 이하 다른 else if 문들도 마찬가지
    if (nowTime.hour >= 0 && nowTime.hour < 2) {
      return timeDataOne.first.ty1;
    } else if (nowTime.hour >= 4 && nowTime.hour < 6) {
      return timeDataOne.first.ty2;
    } else if (nowTime.hour >= 6 && nowTime.hour < 8) {
      return timeDataOne.first.ty3;
    } else if (nowTime.hour >= 8 && nowTime.hour < 10) {
      return timeDataOne.first.ty4;
    } else if (nowTime.hour >= 10 && nowTime.hour < 12) {
      return timeDataOne.first.ty5;
    } else if (nowTime.hour >= 12 && nowTime.hour < 14) {
      return timeDataOne.first.ty6;
    } else if (nowTime.hour >= 16 && nowTime.hour < 18) {
      return timeDataOne.first.ty7;
    } else if (nowTime.hour >= 18 && nowTime.hour < 20) {
      return timeDataOne.first.ty8;
    } else if (nowTime.hour >= 20 && nowTime.hour < 22) {
      return timeDataOne.first.ty9;
    } else if (nowTime.hour >= 22 && nowTime.hour < 24) {
      return timeDataOne.first.ty10;
    }

    return result;
  }

  // nowDate 변수 제거
  // => 사용되지 않음
  List<YukymTimeModel> _getTimeDataOne() {
    List<YukymTimeModel> timeDataOne = [];
    for (int i = 0; i < 24; i++) {
      timeDataOne.add(YukymTimeModel());
    }
    return timeDataOne;
  }
}

class YukymTimeModel {
  String ty1 = '갑자1국';
  String ty2 = '갑자2국';
  String ty3 = '갑자3국';
  String ty4 = '갑자4국';
  String ty5 = '갑자5국';
  String ty6 = '갑자6국';
  String ty7 = '갑자7국';
  String ty8 = '갑자8국';
  String ty9 = '갑자9국';
  String ty10 = '갑자10국';
  String ty11 = '갑자11국';
  String ty12 = '갑자12국';
}
