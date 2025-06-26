import 'package:intl/intl.dart';

class YukymController {

  String nowDate;
  int nowTime;
  // DateTime.parse(_userData.value!.selectDate)
  // String nowDate = DateFormat('yyyy-MM-dd').format(DateTime.now());

  YukymController({String? nowDate, int? nowTime})
    : nowDate = nowDate ?? DateFormat('yyyy-MM-dd').format(DateTime.now()),
    nowTime = nowTime ?? DateTime.now().hour.toInt();

  // 1. 자시의 국 : 갑자1국 = getTyOne()의 값
  String getTyA() {
    // List<YukymTimeModel> timeDataOne =
    // _getTimeDataOne(nowDate);

    if (nowDate.isNotEmpty) {
      // nowTime = timeDataOne.first.ty1;

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
    } else {
      // Handle the case when the list is empty
      return '경오7국';  // Or any other appropriate action
    }
  }

  String getTyB() {
    List<YukymTimeModel> timeDataOne =
    _getTimeDataOne(nowDate);
    // String result = timeDataOne.first.ty12;

    if (nowTime >= 0 && nowTime < 2) {
      return timeDataOne.first.ty1;
    }else if (nowTime >= 2 && nowTime < 4) {
      return timeDataOne.first.ty2;
    } else if (nowTime >= 4 && nowTime < 6) {
      return timeDataOne.first.ty3;
    } else if (nowTime >= 6 && nowTime < 8) {
      return timeDataOne.first.ty4;
    } else if (nowTime >= 8 && nowTime < 10) {
      return timeDataOne.first.ty5;
    } else if (nowTime >= 10 && nowTime < 12) {
      return timeDataOne.first.ty6;
    } else if (nowTime >= 12 && nowTime < 14) {
      return timeDataOne.first.ty7;
    } else if (nowTime >= 14 && nowTime < 16) {
      return timeDataOne.first.ty8;
    } else if (nowTime >= 16 && nowTime < 18) {
      return timeDataOne.first.ty9;
    } else if (nowTime >= 18 && nowTime < 20) {
      return timeDataOne.first.ty10;
    } else if (nowTime >= 20 && nowTime < 22) {
      return timeDataOne.first.ty11;
    } else if (nowTime >= 22 && nowTime < 24) {
      return timeDataOne.first.ty12;
    }

    return timeDataOne.first.ty12;
  }

  List<YukymTimeModel> _getTimeDataOne(String nowDate) {    
    // List<YukymTimeModel> timeDataOne = [];
    // for (int i = 0; i < 24; i++) {
    //   timeDataOne.add(YukymTimeModel());
    // }
    return [YukymTimeModel()];
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